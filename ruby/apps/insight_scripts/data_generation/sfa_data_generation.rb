%w( dbclient configuration_store helpers ).each { |f| require File.join(File.dirname(__FILE__), f) }
require 'yaml'
require 'pp'
require 'ostruct'
require 'fileutils'

include FileUtils
include DBClient
include Helpers

module SFADataGen

  class Data < Hash
  
    # adds the value of each variable name in vars array to *this* hash. 
    # variables are eval'd w/in the supplied binding b
    def add(vars, b, options = {})
      options[:exclude] ||= []
      vars.each do |var_name|
        self[var_name.to_sym] = eval(var_name, b) unless options[:exclude].include?(var_name.to_sym)
      end
      self
    end
    
    #short alias for self
    def s
      self
    end
    
    def load(path)
      self.merge!(YAML::load_file(path))
      self
    end
    
    def save(path)
      File.open(path, "w") {|file| file.puts(self.to_yaml) }
      self
    end
    
  end
  
  class Rep < Data; end
  class Call < Data; end  
  module SFAValues
    CALL_TABLES = %w( call_prsntn call_smpl_lot call_smpl call_dtl call )
    
    DEFAULTS = {:last_updt_user_id => 'TSTNCM01', :last_updt_dt => DateTime.now.strftime(DATE_FORMAT_STRING), :last_updt_tm => DateTime.now.strftime(TIME_FORMAT_STRING)}
    
    CALL_INSERT = %{insert into :schema.call (fld_actv_acct_nmbr, call_nmbr, cust_key_cntc_nmbr, cust_loc_nmbr, hosp_dept_cd, call_dt, call_cnt, pland_ind, strt_tm, end_tm, actvt_type_cd, ccrf_nmbr, last_updt_user_id, last_updt_dt, actv_ind, orgntd_call_ind, call_type_cd, pda_last_updt_dt, pda_last_updt_tm, meded_pgm_id, blf_ind, type_extsn_cd) values (:fld_actv_acct_nmbr, :call_nmbr, NULL, :cust_loc_nmbr, NULL, ':call_dt', :call_cnt, ':pland_ind', ':strt_tm', ':end_tm', NULL, '', ':last_updt_user_id', ':last_updt_dt', ':actv_ind', ':orgntd_call_ind', ':call_type_cd', NULL, NULL, :meded_pgm_id, ':blf_ind', ':type_extsn_cd')}
    CALL_DEFAULTS = {:actv_ind => 'Y', :call_cnt => 1, :blf_ind => 'NULL', :meded_pgm_id => 'NULL', :type_extsn_cd => 'NULL', :call_dt => '01/03/2008', :strt_tm => '9:00:00', :end_tm => '9:30:00'}
    CALL_PLANNED = {:pland_ind => 'Y', :orgntd_call_ind => 'Y', :call_type_cd => ''}
    CALL_PRE_PLANNED_AND_REPORTED_AND_NOT_TRANSMITTED = {:pland_ind => 'D', :orgntd_call_ind => 'Y'}
    CALL_IMMEDIATELY_REPORTED_AND_NOT_TRANSMITTED = {:pland_ind => 'D', :orgntd_call_ind => 'N'}
    CALL_REPORTED_AND_TRANSMITTED = {:pland_ind => 'N', :orgntd_call_ind => 'N'}
    
    CALL_DTL_INSERT = %{insert into :schema.call_dtl (fld_actv_acct_nmbr, call_nmbr, dtl_nmbr, part_nmbr, dtl_type_cd, prod_dtl_grp_nmbr, dtl_topic_nmbr, seq_nmbr, call_dtl_cnt, prctr_rqstd_ind, last_updt_user_id, last_updt_dt, last_updt_tm, actv_ind) values (:fld_actv_acct_nmbr, :call_nmbr, :dtl_nmbr, :part_nmbr, ':dtl_type_cd', :prod_dtl_grp_nmbr, :dtl_topic_nmbr, :seq_nmbr, :call_dtl_cnt, ':prctr_rqstd_ind', ':last_updt_user_id', ':last_updt_dt', ':last_updt_tm', ':actv_ind')}    
    CALL_DTL_DEFAULTS = {:actv_ind => 'Y', :prctr_rqstd_ind => 'Y', :call_dtl_cnt => 1, :seq_nmbr => 1, :part_nmbr => 1}
    CALL_DTL_DETAIL = {:dtl_type_cd => 'P'}
    CALL_DTL_TOPIC = {:dtl_type_cd => 'T'}
    
    CALL_SMPL_INSERT = %{insert into :schema.call_smpl (fld_actv_acct_nmbr, call_nmbr, smpl_prod_nmbr, smpl_rcpt_nmbr, part_nmbr, smpl_qty, smpl_send_ind, prcsd_ind, last_updt_user_id, last_updt_dt, last_updt_tm, actv_ind, sgntr_cptr_mthd_cd, smpl_rcvd_ind) values (:fld_actv_acct_nmbr, :call_nmbr, ':smpl_prod_nmbr', :smpl_rcpt_nmbr, :part_nmbr, :smpl_qty, ':smpl_send_ind', ':prcsd_ind', ':last_updt_user_id', ':last_updt_dt', ':last_updt_tm', ':actv_ind', ':sgntr_cptr_mthd_cd', ':smpl_rcvd_ind')}
    CALL_SMPL_DEFAULTS = {:actv_ind => 'Y', :sgntr_cptr_mthd_cd => 'EL', :smpl_qty => 2, :smpl_rcvd_ind => 'N', :smpl_send_ind => 'N', :prcsd_ind => 'N'}
    
    CALL_SMPL_LOT_INSERT = %{insert into :schema.call_smpl_lot (fld_actv_acct_nmbr, call_nmbr, smpl_prod_nmbr, lot_nmbr, smpl_qty, last_updt_user_id, last_updt_dt, last_updt_tm, actv_ind) values (:fld_actv_acct_nmbr, :call_nmbr, ':smpl_prod_nmbr', ':lot_nmbr', :smpl_qty, ':last_updt_user_id', ':last_updt_dt', ':last_updt_tm', ':actv_ind')}
    CALL_SMPL_LOT_DEFAULTS = {:actv_ind => 'Y', :smpl_qty => 2}
    
    CALL_PRSNTN_INSERT = %{insert into :schema.call_prsntn (fld_actv_acct_nmbr, call_nmbr, prsntn_seq_nmbr, parnt_seq_nmbr, objct_type_cd, prod_dtl_grp_nmbr, elpsd_tm, actv_ind, last_updt_user_id, last_updt_dt, last_updt_tm, objct_txt, asset_id, session_txt, dsply_status_ind) values (:fld_actv_acct_nmbr, :call_nmbr, :prsntn_seq_nmbr, :parnt_seq_nmbr, ':objct_type_cd', :prod_dtl_grp_nmbr, ':elpsd_tm', ':actv_ind', ':last_updt_user_id', ':last_updt_dt', ':last_updt_tm', ':objct_txt', :asset_id, ':session_txt', ':dsply_status_ind')}
    CALL_PRSNTN_DEFAULTS = {:actv_ind => 'Y', :parnt_seq_nmbr => 'NULL', :objct_type_cd => '99', :elpsd_tm => DateTime.now.strftime(TIME_FORMAT_STRING), :objct_txt => 'NCM test screen', :asset_id => 1234, :session_txt => 'ncm test session text', :dsply_status_ind => 'N' }
    
  end
  
  class ValueMap < Hash
    
    def initialize
      self.class.constants.each do |name|
        self[name.downcase.to_sym] = eval("#{self.class}::#{name}")
      end
    end
    
    def get(*keys)
      h = {}
      keys.each { |key| h.merge!(self[key.to_s.downcase.to_sym] || self[key.to_s.upcase.to_sym]) }
      h
    end
    
  end  
  
  class SFAValueMap < ValueMap
    include SFAValues
    
    def get(*keys)
      super(*keys).merge(self[:defaults])
    end
    
    def get_by(options)
      h = {}
      table = options[:table]
      type = options[:type]
      
      if table
        h.merge!( get("#{table.to_s}_defaults".to_sym) )
      end
      
      if table && type
        h.merge!( get("#{table.to_s}_#{type.to_s}".to_sym) )
      end
      
      h
    end
    
  end
    

  class BaseFactory
    
    def self.init(dbclient, logger = nil)
      @@dbclient = dbclient
      if logger ==nil
        @@logger = Logger.new(STDOUT)
        @@logger.level = Logger::DEBUG
      else
        @@logger = logger
      end
    end
    
    def self.l
      @@logger
    end
    
    def self.c
      @@dbclient
    end
    
  end

  

  class RepFactory < BaseFactory
    
    def self.get_by_org_unit_nmbr(org_unit_nmbr)
      l.info("Retrieving data for Rep where org_unit_nmbr = #{org_unit_nmbr}")
      customers = c.select_all_hash(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
      individuals = customers.select_where(:inst_cust_ind => 'N')
      individual_faas = individuals.collect_key(:fld_actv_acct_nmbr)
      organizations = customers.select_where(:inst_cust_ind => 'Y')
      organization_faas = organizations.collect_key(:fld_actv_acct_nmbr)
      product_bag = c.select_all_hash(:get_assigned_products_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
      product_bag_ids = product_bag.collect_key(:prod_dtl_grp_nmbr)
      sales_team = c.select_all_hash(:get_sls_team_nmbr_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)  
      sales_team_ids = sales_team.collect_key(:sls_team_nmbr)
      Rep.new.add(local_variables, binding)
    end
    
  end
  


  class CallFactory < BaseFactory
    
    @@sfa_value_map = SFAValueMap.new
    
    def self.random_call_type_cd
      %w( LS SI SS ).random
    end
    
    def self.get_next_call_nmbr_by_fld_actv_acct_nmbr(fld_actv_acct_nmbr)
      last_call_nmbr = c.select_value(:get_last_call_nmbr_by_fld_actv_acct_nmbr, :fld_actv_acct_nmbr => fld_actv_acct_nmbr)
      if last_call_nmbr == nil
        next_call_nmbr = 1
      else
        next_call_nmbr = last_call_nmbr + 1
      end
      next_call_nmbr
    end

    @@active_dtl_topic_nmbrs = nil
    def self.random_dtl_topic_nmbr
      @@active_dtl_topic_nmbrs = HelperFactory.active_topics.collect_key(:dtl_topic_nmbr) unless @@active_dtl_topic_nmbrs
      @@active_dtl_topic_nmbrs.random
    end
    
    def self.random_prod_dtl_grp_nmbr
      r[:product_bag_ids].random
    end
    
    def self.gen_smpl_rcpt_nmbr
      "80#{rand(9)}1#{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}".to_i
    end
    
    @@active_smpl_prods = nil
    def self.random_smpl_prod_nmbr
      
      unless @@active_smpl_prods
        @@active_smpl_prods = HelperFactory.active_smpl_prods
        @@prod_dtl_grp_to_smpl_prod_nmbr = {}
        @@active_smpl_prods.each do |smpl_prod_row|
          @@prod_dtl_grp_to_smpl_prod_nmbr[smpl_prod_row['PROD_DTL_GRP_NMBR']] = smpl_prod_row['SMPL_PROD_NMBR']
        end
      end

      smpl_prod_nmbr = nil
      smpl_prod_nmbr = @@prod_dtl_grp_to_smpl_prod_nmbr[random_prod_dtl_grp_nmbr]
      smpl_prod_nmbr = @@active_smpl_prods.random['SMPL_PROD_NMBR'] unless smpl_prod_nmbr
      smpl_prod_nmbr
    end
    
    def self.d
       @@current_data
     end
     
    def self.r
      @@rep
    end
     
    def self.val_map
       @@sfa_value_map
     end
     
    def self.init_common(h)
      @@current_data = Call.new
      @@rep = h[:rep]
      rep = h[:rep]
      params = h[:params]
      
      schema = @@dbclient.schema.to_s
      fld_actv_acct_nmbr = params[:fld_actv_acct_nmbr]
      call_nmbr = params[:call_nmbr]
      cust_loc_nmbr = rep[:customers].select_where(:fld_actv_acct_nmbr => fld_actv_acct_nmbr)[0]['PRI_CUST_LOC_NMBR']
      
      d.add(local_variables, binding, :exclude => [:h, :rep, :params])
    end
    
    def self.gen_sql(h = {})
      d.add(h[:variables], h[:binding], :exclude => h[:excludes]) if h[:variables] && h[:binding]
      d.merge!( h[:params] ) if h[:params]
      d.merge!( val_map.get_by(:table => h[:table], :type => h[:type]) )
      sb = StatementBuilder.new(val_map["#{h[:table].to_s}_insert".to_sym])
      sb.add(d)
      sb.to_sql.gsub(/'NULL'/, "NULL") # quoted NULL fix            
    end
     
    def self.gen_planned_call_sql(h = {})
      init_common(h)
      gen_sql(:table => :call, :type => :planned)
    end
    
    def self.gen_reported_call_sql(h = {})
      excludes = [:rep, :statements, :excludes]
      statements = []
      init_common(h)
      
      rep = h[:rep]
      
      # call
      call_type_cd = random_call_type_cd
      statements << gen_sql(:table => :call, :type => :reported_and_transmitted, :params => {:call_type_cd => call_type_cd})
      
      # detail
      dtl_nmbr = 1
      dtl_topic_nmbr = 'NULL'
      seq_nmbr = 1
      prod_dtl_grp_nmbr = rep[:product_bag_ids].random
      statements << gen_sql(:table => :call_dtl, :type=> :detail, :params => {:dtl_nmbr => dtl_nmbr, :dtl_topic_nmbr => dtl_topic_nmbr, :seq_nmbr => seq_nmbr, :prod_dtl_grp_nmbr => prod_dtl_grp_nmbr})
      
      # topic
      dtl_nmbr = 2
      dtl_topic_nmbr = random_dtl_topic_nmbr
      prod_dtl_grp_nmbr = 'NULL'
      statements << gen_sql(:table => :call_dtl, :type => :topic, :params => {:dtl_nmbr => dtl_nmbr, :dtl_topic_nmbr => dtl_topic_nmbr, :seq_nmbr => seq_nmbr, :prod_dtl_grp_nmbr => prod_dtl_grp_nmbr})
      
      # sample (call_smpl)
      smpl_prod_nmbr = random_smpl_prod_nmbr
      smpl_rcpt_nmbr = gen_smpl_rcpt_nmbr
      statements << gen_sql(:table => :call_smpl, :params => {:smpl_prod_nmbr => smpl_prod_nmbr, :smpl_rcpt_nmbr => smpl_rcpt_nmbr})
      
      # sample (call_smpl_lot)
      lot_nmbr = 'U4093'
      statements << gen_sql(:table => :call_smpl_lot, :params => {:smpl_prod_nmbr => smpl_prod_nmbr, :smpl_rcpt_nmbr => smpl_rcpt_nmbr, :lot_nmbr => lot_nmbr})
      
      # mycall activity
      5.times do |count|
        prsntn_seq_nmbr = count + 1
        prod_dtl_grp_nmbr = random_prod_dtl_grp_nmbr
        statements << gen_sql(:table => :call_prsntn, :params => {:prsntn_seq_nmbr => prsntn_seq_nmbr, :prod_dtl_grp_nmbr => prod_dtl_grp_nmbr})
      end      
      
      if false
      
        # call
        call_type_cd = random_call_type_cd
        statements << gen_sql(:table => :call, :type => :reported_and_transmitted, :variables => local_variables, :binding => binding, :exclude => excludes)
        
        # detail
        dtl_nmbr = 1
        dtl_topic_nmbr = 'NULL'
        seq_nmbr = 1
        prod_dtl_grp_nmbr = rep[:product_bag_ids].random
        statements << gen_sql(:table => :call_dtl, :type=> :detail, :variables => local_variables, :binding => binding, :exclude => excludes)
        
        # topic
        dtl_nmbr = 2
        dtl_topic_nmbr = random_dtl_topic_nmbr
        prod_dtl_grp_nmbr = 'NULL'
        statements << gen_sql(:table => :call_dtl, :type => :topic, :variables => local_variables, :binding => binding, :exclude => excludes)
        
        # sample (call_smpl)
        smpl_prod_nmbr = random_smpl_prod_nmbr
        smpl_rcpt_nmbr = gen_smpl_rcpt_nmbr
        statements << gen_sql(:table => :call_smpl, :variables => local_variables, :binding => binding, :exclude => excludes)
        
        # sample (call_smpl_lot)
        lot_nmbr = 'U4093'
        statements << gen_sql(:table => :call_smpl_lot, :variables => local_variables, :binding => binding, :exclude => excludes)
        
        # mycall activity
        5.times do |count|
          prsntn_seq_nmbr = count + 1
          prod_dtl_grp_nmbr = random_prod_dtl_grp_nmbr
          statements << gen_sql(:table => :call_prsntn, :variables => local_variables, :binding => binding, :exclude => excludes)
        end
      end
      
      statements
    end
  
  end
  
  class CallData < Hash; end
  
  class HelperFactory < BaseFactory
    
    def self.ncm_rep_org_unit_nmbrs
      load_yaml(:ncm_rep_org_unit_nmbrs) do
        c.select_all_hash(:get_territory_org_unit_nmbrs_by_rbg, :rbg => 'NC').collect_key(:org_unit_nmbr)
      end
    end
    
    def self.active_smpl_prods
      load_yaml(:active_smpl_prods) do
        c.select_all_hash(:active_smpl_prods)
      end
    end
    
    def self.active_topics
      load_yaml(:active_topics) do
        c.select_all_hash(:active_topics)
      end
    end
    
    def self.all_active_rep_org_unit_nmbrs
      load_yaml(:all_active_rep_org_unit_nmbrs) do
        c.select_all_hash(:get_all_active_rep_org_unit_nmbrs).collect_key(:org_unit_nmbr)
      end
    end
    
  end
  
  class CallIDManager
    
    def initialize(rep)
      @rep = rep
      @call_ids = rep[:individual_call_ids]
      generate_more_call_ids
    end
    
    def generate_more_call_ids
      new_call_ids = []

      @call_ids.each do |call_id|
        new_call_ids << call_id
        10.times do |i|
          new_call_ids << {:fld_actv_acct_nmbr => call_id[:fld_actv_acct_nmbr], :call_nmbr => call_id[:call_nmbr] + (i + 1)}
        end
      end
      
      @call_ids = new_call_ids
    
    end
  
    def next
      @call_ids.pop
    end
    
  end
  

end

module AppConfig
  ROOT_DATA_DIR_PATH = "c:/data/dev_working/ncm_sfa_impact/"
  SUPPORTING_DATA_DIR_PATH = "c:/data/dev_working/ncm_sfa_impact/supporting_data/"
  ALL_ACTIVE_REP_DATA_DIR_PATH = "#{ROOT_DATA_DIR_PATH}all_active_rep_data/"
  PROGRESS_FILE_PATH = "#{ALL_ACTIVE_REP_DATA_DIR_PATH}_progress"
  REP_SQL_DATA_DIR_PATH = "#{ROOT_DATA_DIR_PATH}sql/"
end

include SFADataGen

facts_dbclient = c(:pebr72_d5723d6, :d5723d6, StatementsStore::STATEMENTS)
BaseFactory.init(facts_dbclient)
logger = Logger.new(STDOUT); logger.level = Logger::DEBUG

def run(dbclient, logger, options = {}, &blk)
  yield dbclient, logger unless options[:cancel]
end

run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  rep = RepFactory.get_by_org_unit_nmbr(1789)
  puts rep.to_yaml
  call = CallFactory.gen(rep)
  call.delete(:rep)
  #puts SFAValueMap.new[:call_globals].to_yaml
end


###############################################################################
# Retrieves rep info and 10 random call ids for every active rep and saves each reps data to a single yaml (.yml) file
###### #########################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  # gets {count} random call ids (faa + call #)
  def get_random_call_ids(type, rep, count = 10)
    call_ids = []
    faas = rep["#{type}_faas".to_sym]
    [faas.random(count)].flatten.each do |fld_actv_acct_nmbr|
      call_nmbr = CallFactory::get_next_call_nmbr_by_fld_actv_acct_nmbr(fld_actv_acct_nmbr)
      call_ids << {:fld_actv_acct_nmbr => fld_actv_acct_nmbr, :call_nmbr => call_nmbr}
    end
    call_ids
  end
  
  # clean dir of all files
  if !File.exists?(PROGRESS_FILE_PATH)
    l.info("Removing all files from #{q(ALL_ACTIVE_REP_DATA_DIR_PATH)}")
    rm_rf(Dir["#{ALL_ACTIVE_REP_DATA_DIR_PATH}*.yml"])
  end
  
  all_active_rep_org_unit_nmbrs_hash = dbc.select_all_hash(:get_all_active_rep_org_unit_nmbrs)
  all_active_rep_org_unit_nmbrs = all_active_rep_org_unit_nmbrs_hash.collect_key(:org_unit_nmbr)
  
  save_to_file_as_yaml({}, PROGRESS_FILE_PATH) unless File.exists?(PROGRESS_FILE_PATH)
  progress = YAML::load_file(PROGRESS_FILE_PATH)
  
  all_active_rep_org_unit_nmbrs -= progress.keys
  
  l.info("Processing #{all_active_rep_org_unit_nmbrs.size} org_unit_nmbrs")
    all_active_rep_org_unit_nmbrs.each do |org_unit_nmbr|
    path = "#{ALL_ACTIVE_REP_DATA_DIR_PATH}#{org_unit_nmbr}.yml"
    
    rep = RepFactory.get_by_org_unit_nmbr(org_unit_nmbr)

    if rep[:individual_faas].size == 0 # don't process if rep doesn't have any individual faas
      progress[org_unit_nmbr] = {:valid_rep => false}
      next
    end
    
    rep[:individual_call_ids] = [get_random_call_ids(:individual, rep, 10)].flatten
    rep.save(path)
    
    progress[org_unit_nmbr] = {:valid_rep => true}
    save_to_file_as_yaml(progress, PROGRESS_FILE_PATH)
  end
  
end



###############################################################################
# Reads in each rep's data from yaml (.yml) file then generates call INSERT statements and writes them out to a single .sql
# file for the reps calls
###############################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  ncm_rep_org_unit_nmbrs = HelperFactory.ncm_rep_org_unit_nmbrs
  
  ncm_rep_yml_file_paths = []
  ncm_rep_org_unit_nmbrs.each do |ncm_rep_org_unit_nmbr|
    path = "#{ALL_ACTIVE_REP_DATA_DIR_PATH}#{ncm_rep_org_unit_nmbr}.yml"
    ncm_rep_yml_file_paths << path if File.exists?(path)
  end
  
  file_paths = Dir["#{ALL_ACTIVE_REP_DATA_DIR_PATH}*.yml"]
  ncm_then_non_ncm_file_paths = ncm_rep_yml_file_paths + (file_paths - ncm_rep_yml_file_paths)
  l.debug("ncm_rep_org_unit_nmbrs.size = #{ncm_rep_org_unit_nmbrs.size}, ncm_rep_yml_file_paths.size = #{ncm_rep_yml_file_paths.size}, file_paths.size = #{file_paths.size}, file_paths - ncm_rep_yml_file_paths = #{(file_paths - ncm_rep_yml_file_paths).size}, ncm_then_non_ncm_file_paths.size = #{ncm_then_non_ncm_file_paths.size}")
  
  counter = 0
  start = Time.now
  ncm_then_non_ncm_file_paths = ncm_then_non_ncm_file_paths[0..6000]
  ncm_then_non_ncm_file_paths.each do |file_path|
    l.info("Processing file #{q(file_path)}")
    
    org_unit_nmbr = File.basename(file_path).gsub('.yml', '').to_i
    rep_sql_file_path = "#{REP_SQL_DATA_DIR_PATH}queue/#{org_unit_nmbr}.sql"
    failed_rep_sql_file_path = "#{REP_SQL_DATA_DIR_PATH}failed/#{org_unit_nmbr}.sql"
    completed_rep_sql_file_path = "#{REP_SQL_DATA_DIR_PATH}completed/#{org_unit_nmbr}.sql"
    next if File.exists?(rep_sql_file_path) || File.exists?(failed_rep_sql_file_path) || File.exists?(completed_rep_sql_file_path)
    
    begin
      statements = []
      rep = YAML::load_file(file_path)
      
      planned_calls_per_rep = 3
      reported_calls_per_rep = 10
      
      call_ids = CallIDManager.new(rep)
      
      planned_calls_per_rep.times do
        call_id = call_ids.next
        params = {}
        params.merge!(call_id)
        params.merge!( :rep => rep, :customer_type => :individual, :params => params )
        statements << CallFactory::gen_planned_call_sql(params)
      end
      
      reported_calls_per_rep.times do
        call_id = call_ids.next
        params = {}
        params.merge!(call_id)
        params.merge!( :rep => rep, :customer_type => :individual, :params => params )
        statements << CallFactory::gen_reported_call_sql(params)
      end    
      
      statements = statements.flatten
      
      l.info("Total statements to execute = #{statements.size}")
      
      save_to_file_as_yaml(statements, rep_sql_file_path)
    rescue StandardError => e
      l.debug("#{e}")
    ensure
    end
    counter += 1
  end
  
  l.debug"Time to process #{counter} files is #{Time.now - start} seconds"
end



###############################################################################
# Transaction support test
###############################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  dbh = dbc.con
  dbh['AutoCommit'] = false
  dbh.transaction do |dbh|
    call_rows_affected = dbh.do("insert into d5723d6.call (fld_actv_acct_nmbr, call_nmbr, cust_key_cntc_nmbr, cust_loc_nmbr, hosp_dept_cd, call_dt, call_cnt, pland_ind, strt_tm, end_tm, actvt_type_cd, ccrf_nmbr, last_updt_user_id, last_updt_dt, actv_ind, orgntd_call_ind, call_type_cd, pda_last_updt_dt, pda_last_updt_tm, meded_pgm_id, blf_ind, type_extsn_cd) values (98929482, 51, NULL, 1547320266, NULL, '01/03/2008', 1, 'N', '9:00:00', '9:30:00', NULL, '', 'TSTNCM01', '01/08/2008', 'Y', 'N', 'SI', NULL, NULL, NULL, NULL, NULL)")
    call_dtl_rows_affected = dbh.do("insert into d5723d6.call_dtl (fld_actv_acct_nmbr, call_nmbr, dtl_nmbr, part_nmbr, dtl_type_cd, prod_dtl_grp_nmbr, dtl_topic_nmbr, seq_nmbr, call_dtl_cnt, prctr_rqstd_ind, last_updt_user_id, last_updt_dt, last_updt_tm, actv_ind) values (98929482, 51, 1, 1, 'P', 160, NULL, 1, 1, 'Y', 'TSTNCM01', '01/08/2008', '08:18:39', 'Y')")
    puts "call_rows_affected = #{call_rows_affected}, call_dtl_rows_affected = #{call_dtl_rows_affected}"
  end
  #dbh['AutoCommit'] = true
end




###############################################################################
# Delete NCM call data
###############################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  SFAValues::CALL_TABLES.each do |table_name|
    rows_affected = delete_ncm_data_from_table(dbc, table_name)
    l.info("#{rows_affected} rows deleted from table #{table_name}")
  end
  
end

###############################################################################
# Baseline #2 customer deck setup
###############################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  customers = dbc.select_all_hash(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => 11133)
  customer_size = customers.size
  
  inactive_customers = dbc.select_all_hash(:inactive_customers_by_org_unit_nmbr, :org_unit_nmbr => 11133)
  inactive_customers_size = inactive_customers.size
  inactive_customer_faas = inactive_customers.collect_key(:fld_actv_acct_nmbr)
  inactive_customer_faas_size = inactive_customer_faas.size
  
  inactive_customer_faas.each do |faa|
    h = {}
    h.merge!( NCMSFAImpactConfig.get(:db2_audit_column_values) )
    h.merge!( {:fld_actv_acct_nmbr => faa, :end_dt => '12/31/9999', :last_updt_user_id => 'TSTNCM01'} )
    statement = dbc.generate_statement(:activate_fld_actv_acct, h)
    l.info( "Executing\n#{statement}" )
    rows_affected = dbc.do(statement, {}, 1)
    l.info("rows_affected = #{rows_affected}")
  end
  
  puts local_var_values(local_variables, binding, :exclude => [:facts_dbclient, :inactive_customer_faas, :inactive_customers, :customers, :dbc, :logger, :l])
end


###############################################################################
# Average called upon customers in call deck size for D1, D2 reps
###############################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  org_unit_nmbrs = dbc.select_all_hash(:get_territory_org_unit_nmbrs_by_region, :region => '1D')
  org_unit_nmbr_ids = org_unit_nmbrs.collect_key(:org_unit_nmbr)
  
  org_unit_nmbr_ids.each do |org_unit_nmbr|
    customers = dbc.select_all_hash(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    puts "#{org_unit_nmbr}, #{customers.size}"
  end
  
end



###############################################################################
# Activate all inactive customers for rep in Region-District 7C-56
###############################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger

  org_unit_nmbrs = dbc.select_all_hash(:get_territory_org_unit_nmbrs_by_region_and_distict, :region => '7C', :district => '56')
  org_unit_nmbr_ids = org_unit_nmbrs.collect_key(:org_unit_nmbr)
  
  org_unit_nmbr_ids.each do |org_unit_nmbr|
    active_customers = dbc.select_all_hash(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    inactive_customers = dbc.select_all_hash(:inactive_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    inactive_faas = inactive_customers.collect_key(:fld_actv_acct_nmbr)
    puts "org_unit_nmbr = #{org_unit_nmbr}, active_customers.size = #{active_customers.size}, inactive_customers.size = #{inactive_customers.size}"
    inactive_faas.each { |faa| activate_faa(dbc, l, faa) }
  end
  
end

###############################################################################
# Apply SQL files
###############################################################################
run(facts_dbclient, logger, :cancel => true) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  while true
    
    while (sql_files = Dir["#{REP_SQL_DATA_DIR_PATH}queue/*.sql"]).size > 0
      file_path = sql_files.random
      l.info("Applying #{file_path}")
      statements = YAML::load_file(file_path)
      success = false
      
      begin
        # execute all statements for rep w/in transaction
        if true
          dbh = dbc.con
          dbh['AutoCommit'] = false
          dbh.transaction do |dbh|
            statements.flatten.each do |statement|
              #l.info("Executing\n#{statement}")
              rows_affected = dbh.do(statement)
              #l.info("#{rows_affected} rows affected")
            end
            success = true
          end
        end  
      rescue StandardError  => e
        l.info("Failed to apply #{file_path}")
        save_to_file_as_yaml(e, "#{REP_SQL_DATA_DIR_PATH}/logs/#{File.basename(file_path)}.log")
      ensure
        if success
          mv(file_path, "#{REP_SQL_DATA_DIR_PATH}completed/")
        else
          mv(file_path, "#{REP_SQL_DATA_DIR_PATH}failed/")
        end
      end

    end
    
    l.info("Waiting 5 minutes for more work ..")
    sleep(300)
  end
end

###############################################################################
# Make 5000 FAA changes
###############################################################################
run(facts_dbclient, logger, :cancel => false) do |dbc, logger|
  include AppConfig
  dbc.logger = logger
  l = dbc.logger
  
  if false
    ncm_rep_org_unit_nmbrs = HelperFactory::ncm_rep_org_unit_nmbrs
    subset_ncm_rep_org_unit_nmbrs = []
    while subset_ncm_rep_org_unit_nmbrs.size < 60
      org_unit_nmbr = ncm_rep_org_unit_nmbrs.random
      path = "#{ALL_ACTIVE_REP_DATA_DIR_PATH}#{org_unit_nmbr}.yml"
      if !subset_ncm_rep_org_unit_nmbrs.include?(org_unit_nmbr) and File.exists?(path)
        subset_ncm_rep_org_unit_nmbrs << org_unit_nmbr
      end
    end
    
    all_active_rep_org_unit_nmbrs = HelperFactory::all_active_rep_org_unit_nmbrs
    subset_all_active_rep_org_unit_nmbrs = []
    while subset_all_active_rep_org_unit_nmbrs.size < 190
      org_unit_nmbr = all_active_rep_org_unit_nmbrs.random
      path = "#{ALL_ACTIVE_REP_DATA_DIR_PATH}#{org_unit_nmbr}.yml"
      if !subset_all_active_rep_org_unit_nmbrs.include?(org_unit_nmbr) and File.exists?(path)
        subset_all_active_rep_org_unit_nmbrs << org_unit_nmbr
      end
    end

    org_unit_nmbrs = subset_ncm_rep_org_unit_nmbrs + subset_all_active_rep_org_unit_nmbrs
    
    l.debug("org_unit_nmbrs.size = #{org_unit_nmbrs.size}")
    
    faas = []
    org_unit_nmbrs.each do |org_unit_nmbr|
      path = "#{ALL_ACTIVE_REP_DATA_DIR_PATH}#{org_unit_nmbr}.yml"
      l.info("processing #{path}")
      rep = YAML::load_file(path)
      faas += rep[:individual_faas].random(20)
    end
  end
  
  faas = load_yaml(:five_thousand_uniq_faas) { faas }
  puts "faas.uniq.size = #{faas.uniq.size}"
  
  faas_chunks = chunk(faas, 50)
  puts "faas_chunks.size = #{faas_chunks.size}"

  faas_chunks.each do |faa_chunk|
    statement = dbc.generate_statement(:touch_faa, :fld_actv_acct_nmbr => faa_chunk.join(','))
    #l.info(statement)
    rows_affected = dbc.do(statement)
    l.info("rows_affected = #{rows_affected}")
  end
  
end