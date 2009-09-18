%w( dbclient configuration_store helpers sfa_data_generation.rb ).each { |f| require File.join(File.dirname(__FILE__), f) }
require 'yaml'
require 'pp'

include DBClient
include Helpers
include Insight


class CallGeneratorRunner
  
  attr_accessor :logger
  
  INDIVIDUAL_CALLS = 8
  ORGANIZATION_CALLS = 2
  
  def initialize(statement_runner)
    @statement_runner = statement_runner
  end
  
  def get_all_active_rep_org_unit_nmbrs
    [1789]
  end
  
  def get_rep_info_by_org_unit_nmbr(org_unit_nmbr)
    r = {}
    r[:org_unit_nmbr] = org_unit_nmbr
    r[:customers] = c.select_all_hash(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    
    r[:individuals] = r[:customers].select_where([:INST_CUST_IND => 'N'])
    r[:individual_faas] = r[:individuals].collect_key(:FLD_ACTV_ACCT_NMBR)
    
    r[:organizations] = r[:customers].select_where([:INST_CUST_IND => 'Y'])
    r[:organization_faas] = r[:organizations].collect_key(:FLD_ACTV_ACCT_NMBR)
    
    r[:product_bag] = c.select_all_hash(:get_assigned_products_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    r[:product_bag_ids] = r[:product_bag].collect_key(:PROD_DTL_GRP_NMBR)
  
    r[:sales_team] = c.select_all_hash(:get_sls_team_nmbr_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)  
    r[:sales_team_ids] = r[:sales_team].collect_key(:SLS_TEAM_NMBR)
    r
  end
  

  
  def get_pri_cust_loc_nmbr_by_fld_actv_acct_nmbr(rep, fld_actv_acct_nmbr)
    rep[:individuals].select_where([:fld_actv_acct_nmbr => fld_actv_acct_nmbr]).first['PRI_CUST_LOC_NMBR']
  end
  
  def random_call_type_cd
    %w( LS SI SS ).random
  end  
  
  def generate_common_call_data(rep)
    h = {}
    h[:fld_actv_acct_nmbr] = rep[:individual_faas].random
    h[:next_call_nmbr] = get_next_call_nmbr_by_fld_actv_acct_nmbr( h[:fld_actv_acct_nmbr] )
    h[:pri_cust_loc_nmbr] = get_pri_cust_loc_nmbr_by_fld_actv_acct_nmbr(rep, h[:fld_actv_acct_nmbr])
    h[:call_type_cd] = random_call_type_cd
    h
  end
  
  def generate_individual_call(rep)
    vals = generate_common_call_values(rep)
  end
  
  def run
    
    get_all_active_rep_org_unit_nmbrs.each do |org_unit_nmbr|
      rep = get_rep_info_by_org_unit_nmbr(org_unit_nmbr)
      
      INDIVIDUAL_CALLS.times do
        vals = generate_individual_call(rep)
        cg = CallGenerator.new(@statement_runner, rep)
        cg.gen(:reported_and_transmitted_call)
        
        call_insert_statement = cg.gen_reported_transmitted(vals)
        rows_affected = c.do(call_insert_statement, nil, 1)
        @logger.debug "Executing #{call_insert_statement}\nrows_affected = #{rows_affected}"
      end
      
      ORGANIZATION_CALLS.times do
        rep[:organization_faas].random
      end
      
    end
    
  end      
  
  private
  def c
    @statement_runner
  end
  
end


statement_runner = c(:pebr72_d5723d6, :d5723d6, StatementsStore::STATEMENTS)
logger = Logger.new(STDOUT)
logger.level = Logger::DEBUG
statement_runner.logger = logger

call_generator_runner = CallGeneratorRunner.new(statement_runner)
call_generator_runner.logger = logger
call_generator_runner.run

exit

module IncreaseCustomerDeck
called_on_customer_deck_size = 500
sr = statement_runner
n4_01_rep_org_unit_nmbrs = sr.select_all_hash(:get_territory_org_unit_nmbrs_by_region_and_distict, :region => 'N4', :district => '01').collect_key(:org_unit_nmbr)
n4_01_rep_org_unit_nmbrs.each do |org_unit_nmbr|
  active_customers = sr.select_all_hash(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
  active_customer_faas = active_customers.collect_key(:fld_actv_acct_nmbr)
  inactive_customers = sr.select_all_hash(:inactive_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
  inactive_customer_faas = inactive_customers.collect_key(:fld_actv_acct_nmbr)
  
  number_of_customers_to_activate = called_on_customer_deck_size - active_customer_faas.size
  
  customer_faas_to_activate = []
  if number_of_customers_to_activate > 0
    if number_of_customers_to_activate <= inactive_customer_faas.size
      customer_faas_to_activate = inactive_customer_faas[0..(number_of_customers_to_activate - 1)]
    else
      customer_faas_to_activate = inactive_customer_faas
    end
  end
  
  all_customer_faas = []
  all_customer_faas.concat(active_customers)
  all_customer_faas.concat(inactive_customer_faas)
  logger.debug "org_unit_nmbr = #{org_unit_nmbr}, active_customer_faas.size = #{active_customer_faas.size}, inactive_customers.size = #{inactive_customer_faas.size}, all_customer_faas.uniq.size = #{all_customer_faas.uniq.size}, customer_faas_to_activate.size = #{customer_faas_to_activate.size}"
  
  values = {}
  values.merge!( ncm_value_map[:db2_audit_column_values] )
  
  faa_chunks = chunk(customer_faas_to_activate, 50)
  faa_chunks.each do |faas|
    values.merge!( :fld_actv_acct_nmbr => faas.join(','), :end_dt => '12/31/9999' )
    #logger.debug sr.generate_statement(:activate_fld_actv_acct, values)
    #rows_affected = sr.do(:activate_fld_actv_acct, values, faas.size)
    #logger.debug "expected_rows_affected = #{values.size}, actual_rows_affected = #{rows_affected}"
  end

end

end
exit

#-----------------------------------------------------------------------------#
# Begin: Set call_on_ind to 'N' for customers
#-----------------------------------------------------------------------------#
begin

  # get all NCM territories (NC RBG)
  value_map = {}
  ncm_territory_org_units_hash = e.select_all_hash(:get_territory_org_unit_nmbrs_by_rbg, :rbg => 'NC')
  ncm_territory_org_unit_nmbrs = ncm_territory_org_units_hash.collect_key(:org_unit_nmbr)
  called_on_customer_deck_size = 200
  count = 1
  not_two_hundred_counter = 0
  ncm_territory_org_unit_nmbrs.each do |org_unit_nmbr|
    
    logger.info "Processing #{count}: org_unit_nmbr=#{org_unit_nmbr}"
      
    # get called on customers for org_unit_nmbr
    called_on_customer_deck = e.select_all_hash(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    faas = called_on_customer_deck.collect_key(:fld_actv_acct_nmbr)
    
    if faas.size != 199
      not_two_hundred_counter += 1
      logger.info "org_unit_nmbr #{org_unit_nmbr} has #{faas.size} called on customers in their call deck"
    end

    number_of_customers_to_inactivate = 0
    if faas.size > called_on_customer_deck_size
      number_of_customers_to_inactivate = faas.size - called_on_customer_deck_size
    end
    
    logger.info "org_unit_nmbr #{org_unit_nmbr} contains #{faas.size} called on customers and #{number_of_customers_to_inactivate} customers need to be inactivated"
    
    customers_to_inactivate = []
    if number_of_customers_to_inactivate != 0
      customers_to_inactivate = faas[0..number_of_customers_to_inactivate]
      
      value_map.merge!( ncm_value_map[:db2_audit_column_values] )
        
      # inactivate each customer
      chunk_size = 50
      chunk_counter = 1
      chunked_customers_to_inactivate = chunk(customers_to_inactivate, 50)
          
      chunked_customers_to_inactivate.each do |faa_arr|
        value_map.merge!( {:fld_actv_acct_nmbrs => faa_arr.join(','), :call_on_ind => 'N'} ) 
        rows_effected = e.do(:update_fld_actv_acct_call_on_ind_by_fld_actv_acct_nmbr, value_map, faa_arr.size)
        raise "Failed to inactivate faa=#{faa_arr.join(',')}" if rows_effected != faa_arr.size
      end
    end
    
    count =count + 1
  end

  exit
end

#-----------------------------------------------------------------------------#
# End: Set call_on_ind to 'N' for customers
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Begin: Configure NCM Expected orgs
#-----------------------------------------------------------------------------#
begin
  value_map = {}

  # get all NCM territories (NC RBG)
  ncm_territory_org_units_hash = e.select_all_hash(:get_territory_org_unit_nmbrs_by_rbg, :rbg => 'NC')
  ncm_territory_org_unit_nmbrs = ncm_territory_org_units_hash.collect_key(:org_unit_nmbr)

  puts "ncm_territory_org_unit_nmbrs.size = #{ncm_territory_org_unit_nmbrs.size}"
  count = 1
  # for each NCM territory org_unit_nmbr
  ncm_territory_org_unit_nmbrs.each do |org_unit_nmbr|
    logger.info "Processing #{count}: org_unit_nmbr=#{org_unit_nmbr}"
    value_map.merge!( ncm_value_map[:db2_audit_column_values] )
    value_map.merge!( ncm_value_map[:inactivate_values] )  
    value_map.merge!( :org_unit_nmbr => org_unit_nmbr )
    
    # get current sales team
    sls_team = e.select_all_hash(:get_sls_team_nmbr_by_org_unit_nmbr, value_map)
    
    # end current sales team if exists
    if sls_team.size > 0
      value_map.merge!( :eff_dt => sls_team[0]['EFF_DT'] )
      rows_effected = e.do(:end_org_unit_sls_team_by_org_unit_nmbr_and_eff_dt, value_map, 1)
      logger.info "Current sales team ended" if rows_effected == 1
    else
      logger.info "No sales team to end"
    end
    
    # insert new NCM (Team N1) sales team
    value_map.merge!( ncm_value_map[:activate_values] )  
    value_map.merge!(ncm_value_map[:org_unit_sls_team])
    rows_effected = e.do(:insert_org_unit_sls_team, value_map, 1)
    logger.info "NCM sales team inserted" if rows_effected == 1
    
    # end all products in reps product bag
    product_bag = e.select_all_hash(:get_assigned_products_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    product_bag.each do |p|
      value_map.merge!( ncm_value_map[:inactivate_values] )  
      value_map.merge!( {
        :org_unit_nmbr => org_unit_nmbr,
        :prod_dtl_grp_nmbr => p['PROD_DTL_GRP_NMBR'],
        :eff_dt => p['EFF_DT'] }
      )
      rows_effected = e.do(:end_org_prod_dtl_grp_by_org_unit_nmbr_and_prod_dtl_grp_nmbr_and_eff_dt, value_map, 1)
      logger.info "Product ended" if rows_effected == 1
    end
    
    # insert all NCM (Team N1) products
    ncm_products = e.select_all_hash(:get_products_by_sls_team_nmbr, :sls_team_nmbr => 380)
    ncm_products.each do |ncm_p|
      value_map.merge!( ncm_value_map[:activate_values] )
      value_map.merge!( ncm_value_map[:org_prod_dtl_grp] )
      value_map.merge!( :prod_dtl_grp_nmbr => ncm_p['PROD_DTL_GRP_NMBR'] )
      rows_effected = e.do(:insert_org_prod_dtl_grp, value_map, 1)
      logger.info "NCM product assigned" if rows_effected == 1
    end
    count = count + 1
  end

  exit
end
#-----------------------------------------------------------------------------#
# End: Configure NCM Expected orgs
#-----------------------------------------------------------------------------#

# -----------------------------------------------------------------------------
# Begin: Shrink call deck sizes
# -----------------------------------------------------------------------------
begin
  e = c(:pebr72_d5723d6, :d5723d6)
  ncm_expected_territories = []
  #%w( 0566 5579 8566 2581 4302 5577 2582 7465 7665 5580 8565 8580 )
  called_on_customer_deck_size = 200
  inactivate_customer_end_dt = '2007-12-01'

  ncm_expected_territories.each do |territory|
    
    # get org_unit_nmbr for territory
    org_unit_nmbr = e.execute(:get_org_unit_nmbr_by_terr_nmbr, :terr_nmbr => territory).flatten.first
    
    # get called on customers for org_unit_nmbr
    called_on_customer_deck = e.execute(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr).flatten
    
    # calculate # of customers to inactivate
    number_of_customers_to_inactivate = 0
    if called_on_customer_deck.size > called_on_customer_deck_size
      number_of_customers_to_inactivate = called_on_customer_deck.size - called_on_customer_deck_size
    end
    
    # get array of customers to inactivate
    customers_to_inactivate = []
    if number_of_customers_to_inactivate != 0
      customers_to_inactivate = called_on_customer_deck[0..number_of_customers_to_inactivate].flatten
    end
    
    # inactivate each customer
    customers_to_inactivate.each do |fld_actv_acct_nmbr|
      rows_effected = e.con.do(
        e.generate_statement(:inactivate_fld_actv_acct,
          :fld_actv_acct_nmbr => fld_actv_acct_nmbr,
          :end_dt => inactivate_customer_end_dt)
      )
      raise "Update failed" if rows_effected != 1
    end
    
    # re-display the # of customers called on for each territory to verify the changes
    called_on_customer_deck = e.execute(:called_on_customers_by_org_unit_nmbr, :org_unit_nmbr => org_unit_nmbr)
    pp "territory #{territory} calls on #{called_on_customer_deck.size} customers"
  end
end
# -----------------------------------------------------------------------------
# End: Shrink call deck sizes
# -----------------------------------------------------------------------------

def fn
  

 end