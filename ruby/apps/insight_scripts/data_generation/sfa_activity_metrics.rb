%w( dbclient configuration_store helpers sfa_data_generation.rb ).each { |f| require File.join(File.dirname(__FILE__), f) }
require 'yaml'
require 'pp'

include DBClient
include Helpers
include Insight

sr = c(:pebr72_d5723d6, :d5723d6, StatementsStore::STATEMENTS)
logger = Logger.new(STDOUT)
logger.level = Logger::DEBUG
sr.logger = logger

global_call_values = CallGenerator::CALL_PARAMS[:call_globals]
planned_call_values = CallGenerator::CALL_PARAMS[:planned_call].merge(global_call_values)
reported_and_transmitted_call_values = CallGenerator::CALL_PARAMS[:reported_and_transmitted_call].merge(global_call_values)

start_date_string = '10/08/2007'
end_date_string = '10/14/2007'

current_date = Date.parse(start_date_string)
end_date = Date.parse(end_date_string)

while current_date != end_date
  current_date_string = current_date.strftime('%m/%d/%Y')
  
  logger.debug sr.generate_statement("select count(*) from d5723d6.call where actv_ind = 'Y' and call_dt = ':call_dt'", planned_call_values.merge(:call_dt => current_date_string))  
  total_calls = sr.select_value("select count(*) from d5723d6.call where actv_ind = 'Y' and call_dt = ':call_dt'", planned_call_values.merge(:call_dt => current_date_string))
  
  logger.debug sr.generate_statement(:call_counts, planned_call_values.merge(:call_dt => current_date_string))
  planned_calls_count = sr.select_value(:call_counts, planned_call_values.merge(:call_dt => current_date_string))
  
  logger.debug sr.generate_statement(:call_counts, reported_and_transmitted_call_values.merge(:call_dt => current_date_string))
  reported_and_transmitted_calls_count = sr.select_value(:call_counts, reported_and_transmitted_call_values.merge(:call_dt => current_date_string))
  
  logger.debug "#{current_date_string} - total_calls = #{total_calls}, planned_calls_count = #{planned_calls_count}, reported_and_transmitted_calls_count = #{reported_and_transmitted_calls_count}, planned_calls_count + reported_and_transmitted_calls_count = #{planned_calls_count + reported_and_transmitted_calls_count}"
  current_date += 1
end


#10/10/2007
total_calls = 61756
planned_calls_count = 3731
pre_planned_and_reported_transmitted_calls_count = 30695
reported_and_transmitted_calls_count = 22856
pland_ind = 'Y' and orgntd_call_ind = 'N' = 658
planned_calls_count + reported_and_transmitted_calls_count = 26587

Reps = 7,000
Planned calls = 15,000 1 op
Reported calls = 53,551 10 ops
5000 faa changes


#10/08/2007 - total_calls = 54785, planned_calls_count = 2279, reported_and_transmitted_calls_count = 20571, planned_calls_count + reported_and_transmitted_calls_count = 22850
#10/09/2007 - total_calls = 62472, planned_calls_count = 3002, reported_and_transmitted_calls_count = 22816, planned_calls_count + reported_and_transmitted_calls_count = 25818

#10/11/2007 - total_calls = 60957, planned_calls_count = 3211, reported_and_transmitted_calls_count = 22274, planned_calls_count + reported_and_transmitted_calls_count = 25485
#10/12/2007 - total_calls = 52865, planned_calls_count = 3233, reported_and_transmitted_calls_count = 20175, planned_calls_count + reported_and_transmitted_calls_count = 23408
#10/13/2007 - total_calls = 741, planned_calls_count = 361, reported_and_transmitted_calls_count = 156, planned_calls_count + reported_and_transmitted_calls_count = 517
