%w( dbclient configuration_store helpers ).each { |f| require File.join(File.dirname(__FILE__), f) }
require 'yaml'
require 'pp'

include DBClient
include Helpers

sr = c(:pebr72_d5723d6, :d5723d6, StatementsStore::STATEMENTS)
logger = Logger.new(STDOUT)
logger.level = Logger::DEBUG
sr.logger = logger

generate_insert_templates(sr, %w( call_prsntn  ) )