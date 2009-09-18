%w( helpers ).each { |f| require File.join(File.dirname(__FILE__), f) }

module StatementsStore
  STATEMENTS =
  {
    :get_org_unit_nmbr_by_territory => {
    
      :statement =>
      %{
      select
          org_unit_nmbr
      from
          :schema.org_unit
      where
          org_unit_cd = ':territory'
          and org_unit_lvl_nmbr = 6
          -- and actv_ind = 'Y'
      },
      :type => :single_value,
      :test_params => {:territory => '0566'}
    
    },
    
    :get_org_unit_nmbr_by_region => {
    
      :statement =>
      %{
      select
          ou.org_unit_nmbr
      from
          :schema.org_unit ou
      where
          ou.org_unit_cd = ':region'
          and ou.org_unit_lvl_nmbr = 3
          and ou.actv_ind = 'Y'
      },
      :type => :single_value,
      :test_params => {:region => 'N4'}
    
    },
    
    :get_org_unit_nmbr_by_region_and_district => {
    
      :statement =>
      %{
        select
            ou_district.org_unit_nmbr
        from
            :schema.org_unit ou_region,
            :schema.org_unit ou_district
        where
            ou_region.org_unit_cd = ':region'
            and ou_region.org_unit_lvl_nmbr = 3
            and ou_region.actv_ind = 'Y'
            and ou_district.org_unit_cd = ':district'
            and ou_district.org_unit_lvl_nmbr = 4
            and ou_district.actv_ind = 'Y'
            and ou_region.org_unit_nmbr = ou_district.par_org_unit_nmbr
      },
      :type => :single_value,
      :test_params => {:region => 'N4', :district => '01'}
    
    },
    
    :get_org_unit_nmbr_by_emply_id => {
    
      :statement =>
      %{
      select
          ea.org_unit_nmbr
      from
          :schema.emply_asgnmnt ea
      where
          ea.emply_id = :emply_id
          and (:system_date >= ea.eff_dt and :system_date <= ea.end_dt)
      },
      :type => :single_value,
      :test_params => {:emply_id => 3358}
    
    },
    
    :get_all_active_rep_org_unit_nmbrs => {
    
      :statement =>
      %{
      select
          ou.org_unit_nmbr
      from
          :schema.emply_asgnmnt ea,
          :schema.org_unit ou
      where
          ea.org_unit_nmbr = ou.org_unit_nmbr
          and (ea.eff_dt <= :system_date and ea.end_dt >= :system_date)
          and ou.eff_dt <= :system_date
          and ou.org_unit_lvl_nmbr = 6
          and ou.actv_ind = 'Y'
      },
      :type => :multiple_values,
      :test_params => {}
    
    },
    
    :get_last_call_nmbr_by_fld_actv_acct_nmbr => {
    
      :statement =>
      %{
      select
        max(call_nmbr)
      from
        :schema.call
      where
        fld_actv_acct_nmbr = :fld_actv_acct_nmbr
      },
      :type => :single_value,
      :test_params => {:fld_actv_acct_nmbr => 25640657}
    
    },
    
    :called_on_customers_by_org_unit_nmbr => {
    
      :statement =>
      %{
      select distinct
          faa.fld_actv_acct_nmbr,
          faa.pri_cust_loc_nmbr,
          c.inst_cust_ind,
          c.last_nm,
          c.first_nm,
          c.mid_nm
      from
          :schema.fld_actv_acct faa,
          :schema.cust c
      where
          faa.cust_nmbr = c.cust_nmbr
          and faa.org_unit_nmbr = :org_unit_nmbr
          and c.actv_stat_cd = 'A'
          and (:system_date >= faa.eff_dt and :system_date <= faa.end_dt)
          and faa.call_on_ind = 'Y'
      },
      :type => :multiple_rows,
      :test_params => {:org_unit_nmbr => 1781}
    
    },
    
    :all_active_faas => {
    
      :statemet =>
      %{
      select distinct
          faa.fld_actv_acct_nmbr
      from
          :schema.fld_actv_acct faa,
          :schema.cust c
      where
          faa.cust_nmbr = c.cust_nmbr
          and c.actv_stat_cd = 'A'
          and (:system_date >= faa.eff_dt and :system_date <= faa.end_dt)
          and faa.call_on_ind = 'Y'      
    },
      :type => :multiple_rows
    },
    
    :inactive_customers_by_org_unit_nmbr => {
    
      :statement =>
      %{
      select distinct
          faa.fld_actv_acct_nmbr,
          faa.pri_cust_loc_nmbr,
          c.inst_cust_ind,
          c.last_nm,
          c.first_nm,
          c.mid_nm
      from
          :schema.fld_actv_acct faa,
          :schema.cust c
      where
          faa.cust_nmbr = c.cust_nmbr
          and faa.org_unit_nmbr = :org_unit_nmbr
          and c.actv_stat_cd = 'A'
          and (:system_date >= faa.eff_dt and :system_date > faa.end_dt)
          and faa.call_on_ind = 'Y'
      },
      :type => :multiple_rows,
      :test_params => {:org_unit_nmbr => 1781}
    
    },
    
    
    :get_sls_team_nmbr_by_org_unit_nmbr => {
    
      :statement =>
      %{
      select
          oust.sls_team_nmbr,
          st.sls_team_desc,
          st.sls_team_shrt_desc,
          oust.eff_dt
      from
          :schema.org_unit_sls_team oust,
          :schema.sls_team st
      where
          oust.sls_team_nmbr = st.sls_team_nmbr
          and oust.org_unit_nmbr = :org_unit_nmbr
          and (oust.eff_dt <= :system_date and oust.end_dt >= :system_date)  
      },
      :type => :single_row,
      :test_params => {:org_unit_nmbr => 7303}
    },
    
    :inactivate_fld_actv_acct => {
    
      :statement =>
      %{
      update
        :schema.fld_actv_acct
      set
        end_dt = ':end_dt'
        :audit_columns_update
      where
        fld_actv_acct_nmbr in (:fld_actv_acct_nmbr)
      },
      :type => :update_single_row,
      :test_params => {:fld_actv_acct_nmbr => 25640657}
    
    },
    
    :activate_fld_actv_acct => {
    
      :statement =>
      %{
      update
        :schema.fld_actv_acct
      set
        end_dt = ':end_dt',
        call_on_ind = 'Y'
        :audit_columns_update
      where
        fld_actv_acct_nmbr in (:fld_actv_acct_nmbr)
      },
      :type => :update_single_row,
      :test_params => {:fld_actv_acct_nmbr => 25640657}
    
    },
    
    :delete_by_table_name_and_last_updt_user_id => {
    
      :statement =>
      %{
      delete from :schema.:table_name where last_updt_user_id = ':last_updt_user_id'
      },
      :type => :delete_multiple_rows,
      :test_params => {}
      
    },
    
    :get_row_count_by_table_name => {
    
      :statement =>
      %{
      select count(*) from :schema.:table_name
      },
      :type => :single_value,
      :test_params => {:table_name => :code}
    },
    
    :get_assigned_products_by_org_unit_nmbr => {
    
      :statement =>
      %{
      select distinct
        opdg.org_unit_nmbr,
        opdg.prod_dtl_grp_nmbr,
        opdg.eff_dt,
        opdg.prod_asgn_type_cd,
        opdg.rspnsblty_type_cd
      from
        :schema.org_prod_dtl_grp opdg,
        :schema.prod_dtl_grp pdg
      where
        opdg.org_unit_nmbr = :org_unit_nmbr
        and opdg.prod_dtl_grp_nmbr = pdg.prod_dtl_grp_nmbr
        and (opdg.eff_dt <= :system_date and opdg.end_dt >= :system_date)
        and pdg.actv_ind = 'Y'
        and pdg.init_fda_apprvl_dt <= :system_date
      },
      :type => :multiple_rows,
      :test_params => {:org_unit_nmbr => 1781}
    
    },
    
    :insert_call => {
    
      :statement =>
      %{
      insert into call (fld_actv_acct_nmbr, call_nmbr, part_nmbr, cust_key_cntc_nmbr, cust_loc_nmbr, hosp_dept_cd, call_dt, call_cnt, pland_ind, strt_tm, end_tm, actvt_type_cd, ccrf_nmbr, last_updt_user_id, last_updt_dt, last_updt_tm, actv_ind, orgntd_call_ind, call_type_cd, pda_last_updt_dt, pda_last_updt_tm, meded_pgm_id, blf_ind, type_extsn_cd) values (:fld_actv_acct_nmbr, :call_nmbr, :part_nmbr, NULL, :cust_loc_nmbr, NULL, ':call_dt', :call_cnt, ':pland_ind', ':strt_tm', ':end_tm', NULL, NULL, ':last_updt_user_id', ':last_updt_dt', ':last_updt_tm', ':actv_ind', ':orgntd_call_ind', ':call_type_cd', NULL, NULL, :meded_pgm_id, ':blf_ind', ':type_extsn_cd')
      },
      :type => :insert_single_row,
      :test_params => {}
    },
    
    :get_cluster_org_unit_nmbrs_by_region_and_district => {
    
      :statement =>
      %{
      select
          ou_cluster.org_unit_nmbr,
          ou_cluster.org_unit_cd
      from
          :schema.org_unit ou_region,
          :schema.org_unit ou_district,
          :schema.org_unit ou_cluster
      where
          ou_region.org_unit_cd = ':region'
          and ou_region.org_unit_lvl_nmbr = 3
          and ou_region.actv_ind = 'Y'
          and ou_region.eff_dt <= :system_date
    
          and ou_district.org_unit_cd = ':district'
          and ou_district.org_unit_lvl_nmbr = 4
          and ou_district.actv_ind = 'Y'
          and ou_district.eff_dt <= :system_date
    
          and ou_cluster.org_unit_lvl_nmbr = 5
          and ou_cluster.actv_ind = 'Y'
          and ou_cluster.eff_dt <= :system_date
    
          and ou_region.org_unit_nmbr = ou_district.par_org_unit_nmbr
          and ou_district.org_unit_nmbr = ou_cluster.par_org_unit_nmbr  
      },
      :type => :multiple_rows,
      :test_params => {:region => 'N4', :district => '01'}
    },
    
    :get_territory_org_unit_nmbrs_by_region_and_distict => {
    
      :statement =>
      %{
      select
          ou_territory.org_unit_nmbr,
          ou_territory.org_unit_cd
      from
          :schema.org_unit ou_region,
          :schema.org_unit ou_district,
          :schema.org_unit ou_cluster,
          :schema.org_unit ou_territory
      where
          ou_region.org_unit_cd = ':region'
          and ou_region.org_unit_lvl_nmbr = 3
          and ou_region.actv_ind = 'Y'
          and ou_region.eff_dt <= :system_date
    
          and ou_district.org_unit_cd = ':district'
          and ou_district.org_unit_lvl_nmbr = 4
          and ou_district.actv_ind = 'Y'
          and ou_district.eff_dt <= :system_date
    
          and ou_cluster.org_unit_lvl_nmbr = 5
          and ou_cluster.actv_ind = 'Y'
          and ou_cluster.eff_dt <= :system_date
    
          and ou_territory.org_unit_lvl_nmbr = 6
          and ou_territory.actv_ind = 'Y'
          and ou_territory.eff_dt <= :system_date
    
          and ou_region.org_unit_nmbr = ou_district.par_org_unit_nmbr
          and ou_district.org_unit_nmbr = ou_cluster.par_org_unit_nmbr
          and ou_cluster.org_unit_nmbr = ou_territory.par_org_unit_nmbr
      },
      :type => :multiple_rows,
      :test_params => {:region => 'N4', :district => '01'}  
    },
    
    :get_territory_org_unit_nmbrs_by_region => {
    
      :statement =>
      %{
      select distinct
          ou_territory.org_unit_nmbr,
          ou_territory.org_unit_cd
      from
          :schema.org_unit ou_region,
          :schema.org_unit ou_district,
          :schema.org_unit ou_cluster,
          :schema.org_unit ou_territory
      where
          ou_region.org_unit_cd = ':region'
          and ou_region.org_unit_lvl_nmbr = 3
          and ou_region.actv_ind = 'Y'
          and ou_region.eff_dt <= :system_date
    
          and ou_district.org_unit_lvl_nmbr = 4
          and ou_district.actv_ind = 'Y'
          and ou_district.eff_dt <= :system_date
    
          and ou_cluster.org_unit_lvl_nmbr = 5
          and ou_cluster.actv_ind = 'Y'
          and ou_cluster.eff_dt <= :system_date
    
          and ou_territory.org_unit_lvl_nmbr = 6
          and ou_territory.actv_ind = 'Y'
          and ou_territory.eff_dt <= :system_date
    
          and ou_region.org_unit_nmbr = ou_district.par_org_unit_nmbr
          and (
            (
                ou_district.org_unit_nmbr = ou_cluster.par_org_unit_nmbr
                and ou_cluster.org_unit_nmbr = ou_territory.par_org_unit_nmbr
            )
            or
            (
                ou_district.org_unit_nmbr = ou_territory.par_org_unit_nmbr
            )
          )
        },
      :type => :multiple_rows,
      :test_params => {:region => 'N4', :district => '01'}      
    },
    
    :get_territory_org_unit_nmbrs_by_rbg => {
    
      :statement =>
      %{
      select distinct
          ou_territory.org_unit_nmbr,
          ou_territory.org_unit_cd
      from
          :schema.org_unit ou_rbg,
          :schema.org_unit ou_region,
          :schema.org_unit ou_district,
          :schema.org_unit ou_cluster,
          :schema.org_unit ou_territory
      where
          ou_rbg.org_unit_cd = ':rbg'
          and ou_rbg.org_unit_lvl_nmbr = 2
          and ou_rbg.actv_ind = 'Y'
          and ou_rbg.eff_dt <= :system_date
    
          and ou_region.org_unit_lvl_nmbr = 3
          and ou_region.actv_ind = 'Y'
          and ou_region.eff_dt <= :system_date
    
          and ou_district.org_unit_lvl_nmbr = 4
          and ou_district.actv_ind = 'Y'
          and ou_district.eff_dt <= current_date
    
          and ou_cluster.org_unit_lvl_nmbr = 5
          and ou_cluster.actv_ind = 'Y'
          and ou_cluster.eff_dt <= :system_date
    
          and ou_territory.org_unit_lvl_nmbr = 6
          and ou_territory.actv_ind = 'Y'
          and ou_territory.eff_dt <= :system_date
    
          and ou_rbg.org_unit_nmbr = ou_region.par_org_unit_nmbr
          and ou_region.org_unit_nmbr = ou_district.par_org_unit_nmbr
          and (
            (
                ou_district.org_unit_nmbr = ou_cluster.par_org_unit_nmbr
                and ou_cluster.org_unit_nmbr = ou_territory.par_org_unit_nmbr
            )
            or
            (
                ou_district.org_unit_nmbr = ou_territory.par_org_unit_nmbr
            )
          )
      },
      :type => :multiple_rows,
      :test_params => { :rbg => 'NC' }
    },
    
    :end_org_unit_sls_team_by_org_unit_nmbr_and_eff_dt => {
    
      :statement =>
      %{
      update
        :schema.org_unit_sls_team
      set
        end_dt = ':end_dt'
        :update_audit_columns
      where
        org_unit_nmbr = :org_unit_nmbr
        and eff_dt = ':eff_dt'    
      },
      :type => :update_single_row
    },
    
    :insert_org_unit_sls_team => {
    
      :statement =>
      %{
        insert into :schema.org_unit_sls_team
        (
          org_unit_nmbr,
          sls_team_nmbr,
          eff_dt,
          end_dt,
          sls_frc_layer_nmbr,
          cust_base_nmbr,
          last_updt_user_id,
          last_updt_dt,
          last_updt_tm
        )
        values
        (
          :org_unit_nmbr,
          :sls_team_nmbr,
          ':eff_dt',
          ':end_dt',
          :sls_frc_layer_nmbr,
          :cust_base_nmbr,
          ':last_updt_user_id',
          ':last_updt_dt',
          ':last_updt_tm'
        )  
      },
      :type => :insert_single_row
      
    },
    
    :end_org_prod_dtl_grp_by_org_unit_nmbr_and_prod_dtl_grp_nmbr_and_eff_dt => {
    
      :statement =>
      %{
      update
        :schema.org_prod_dtl_grp
      set
        end_dt = ':end_dt'
        :update_audit_columns
      where
        org_unit_nmbr = :org_unit_nmbr
        and prod_dtl_grp_nmbr = :prod_dtl_grp_nmbr
        and eff_dt = ':eff_dt'
      }, 
      :type => :update_single_row  
      
    },
    
    :insert_org_prod_dtl_grp => {
    
      :statement =>
      %{
        insert into :schema.org_prod_dtl_grp
        (
          org_unit_nmbr,
          prod_dtl_grp_nmbr,
          eff_dt,
          end_dt,
          last_updt_user_id,
          last_updt_dt,
          last_updt_tm,
          prod_asgn_type_cd,
          rspnsblty_type_cd
        )
        values
        (
          :org_unit_nmbr,
          :prod_dtl_grp_nmbr,
          ':eff_dt',
          ':end_dt',
          ':last_updt_user_id',
          ':last_updt_dt',
          ':last_updt_tm',
          ':prod_asgn_type_cd',
          ':rspnsblty_type_cd'
        )
      },
      :type => :insert_single_row
      
    },
    
    :get_products_by_sls_team_nmbr => {
    
      :statement =>
      %{
      select
          stpdg.sls_team_nmbr,
          stpdg.prod_dtl_grp_nmbr,
          st.sls_team_desc,
          st.sls_team_shrt_desc,
          pdg.dtl_grp_desc,
          pdg.dtl_grp_short_desc
      from
          :schema.sls_team st,
          :schema.sls_team_prod_dtl stpdg,
          :schema.prod_dtl_grp pdg
      where
          st.sls_team_nmbr = stpdg.sls_team_nmbr
          and stpdg.prod_dtl_grp_nmbr = pdg.prod_dtl_grp_nmbr
          and stpdg.sls_team_nmbr = :sls_team_nmbr
          and (eff_dt <= :system_date and end_dt >= :system_date)
      },
      :type => :multiple_rows,
      :test_params => { :sls_team_nmbr => 380 }
    },
    
    :update_fld_actv_acct_call_on_ind_by_fld_actv_acct_nmbr => {
      
      :statement =>
      %{
      update :schema.fld_actv_acct
      set
        call_on_ind = ':call_on_ind'
        :update_audit_columns
      where
        fld_actv_acct_nmbr in (:fld_actv_acct_nmbrs)
      },
      :type => :update_single_row
    },
    
    :call_counts => {
      
      :statement =>
      %{
      select
        count(*)
      from
        :schema.call
      where
        actv_ind = ':actv_ind'
        and pland_ind = ':pland_ind'
        and orgntd_call_ind = ':orgntd_call_ind'
        and call_dt = ':call_dt'
      },
      :type => :single_value
    },
    
    :active_topics => {
    
      :statement =>
      %{
      select
        dt.dtl_topic_desc,
        dt.dtl_topic_nmbr
      from
        :schema.dtl_topic dt
      where
        dt.actv_ind = 'Y'
    },
      :type => :multiple_rows
    },
    
    :active_smpl_prods => {
    
      :statement =>
      %{
      select
        sp.prod_dtl_grp_nmbr,
        sp.smpl_prod_nmbr,
        sp.max_smpl_qty
      from
        :schema.smpl_prod sp
      where
        sp.actv_ind = 'Y'
        and sp.smpl_prod_nmbr is not null
    },
      :type => :multiple_rows
    },
    
    :touch_faa => {
    
      :statement =>
      %{
      update
        :schema.fld_actv_acct
      set end_dt = '12/29/9999'
        where fld_actv_acct_nmbr in (:fld_actv_acct_nmbr)
    },
      :type => :update_multiple_rows
    }
    
  }
end

module NCMSFAImpactConfig
  include Helpers
  MAP =
  {
  
    :db2_audit_column_values => {
      :last_updt_user_id => 'TSTNCM01',
      :last_updt_dt => DateTime.now.strftime(DATE_FORMAT_STRING),
      :last_updt_tm => DateTime.now.strftime(TIME_FORMAT_STRING)
    },
  
    :activate_values => {
      :eff_dt => (DateTime.now - 1).strftime(DATE_FORMAT_STRING),
      :end_dt => '12/31/9999'
    },
    
    :inactivate_values => {
      :end_dt => (DateTime.now - 2).strftime(DATE_FORMAT_STRING)
    },  
  
    :org_unit_sls_team => {
      :sls_team_nmbr => 380,
      :sls_frc_layer_nmbr => 218,
      :cust_base_nmbr => 65
    },
  
    :org_prod_dtl_grp => {
      :prod_asgn_type_cd => 'P',
      :rspnsblty_type_cd => 'Pr'
    }
    
  }
  
  def self.get(k)
    MAP[k]
  end
  
end