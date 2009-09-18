require 'logger'
require 'dbi'

module DBClient
  module CoreExtensions
  
    module String
    
      # template variables are of the form :<variable name>. e.g. :name
      def fill(values = {})
        s = self.clone
        values.each do |key, value|
          s.gsub!(":#{key}", value.to_s) if value.respond_to? :to_s
        end
        s  
      end  
      
    end

    module Array

      def random(count = 1)
        
        if count == 1
          self[rand(self.size)]
        else
          count = self.size if self.size < count        
          r = []
          while r.size != count
            tmp = self[rand(self.size)]
            r << tmp unless r.include?(tmp)
          end
          
          if count == 1
            r = r[0]
          end
          r
        end
        
      end
      
      def collect_key key
        k = key.to_s.downcase
        self.collect { |e| e[k] || e[k.upcase]}
      end
      
      # e.g. select_where(:actv_ind => 'Y')
      def select_where filters
        self.select do |e|
          result = true
          filters.each_pair do |name, value|
            n = name.to_s.downcase
            result = result && ((e[n] || e[n.upcase]) == value)
          end
          result
        end
      end
      
    end
  end
  
  module ConnectionManager

    CONNECTION_DEFINITIONS = {
      :sa_local_insight => {
        :user => '', # user/password are in connection string
        :password => '',
        :dbi_connection_string => 'DBI:ADO:Provider=SQLOLEDB;Data Source=(local);Initial Catalog=Insight;User Id=sa;Password=<password here>;',
        :db_type => :sqlserver,
        :desc => 'Local Insight SQL Server (MSDE) database'
      },
      :insight_local_insight => {
        :user => '', # user/password are in connection string
        :password => '',
        :dbi_connection_string => 'DBI:ADO:Provider=SQLOLEDB;Data Source=(local);Initial Catalog=Insight;User Id=insight;Password=<password here>;',
        :db_type => :sqlserver,
        :desc => 'Local Insight SQL Server (MSDE) database'
      },
      :mbldbret_p5792 => {
        :user => 'mbldbret',
        :password => '<password here>',
        :dbi_connection_string => '',
        :db_type => :oracle,
        :desc => 'Production Insight Oracle database to support field synchronization'
      },
      :pebr72_d5723d6 => {
        :user => 'pebr72',
        :password => '<password here>',
        :dbi_connection_string => 'DBI:ODBC:D5723D6',
        :db_type => :db2,
        :desc => 'FACTS LSV environment'
      },
      :d5792pgm_q5792 => {
        :user => 'd5792pgm',
        :password => '<password here>',
        :dbi_connection_string => 'DBI:ODBC:Q5792',
        :db_type => :oracle,
        :desc => 'Insight Oracle LSV environment'    
      }
    }
    
    class << self
      
      def get_connection_definition(name)
        CONNECTION_DEFINITIONS[name]
      end
      
      def get_connection(name)
        c =CONNECTION_DEFINITIONS[name]
        raise %Q{Connection "#{name}" doesn't exist} unless c
        DBI.connect(c[:dbi_connection_string], c[:user], c[:password])
      end
      
      def connection_names
        CONNECTION_DEFINITIONS.collect { |connection_definition| connection_definition[0] }
      end
      
      # return true if connection can be established; otherwise false
      def test_connection(name)
        connected = false
        conn = nil
        
        begin
          conn = get_connection(name)
        rescue
        ensure
          connected = (conn != nil)
        end
        
        # close connection
        begin
          conn.close if conn
        rescue
        end
        
        connected
      end
      
      def test_connections
        all_connected = true
        connection_names.each { |connection_name| all_connected &= test_connection(connection_name) }
        all_connected
      end
      
    end
  end
    
  module DBKeywordMap

    KEYWORD_MAPPINGS = {
      :global => {
        :audit_columns_update => ", last_updt_user_id = ':last_updt_user_id'"    
      },
      :db2 => {
        :system_date => 'current_date'
      },
      :oracle => {
        :system_date => 'sysdate'
      },
      :sqlserver => {
        :system_date => 'getdate()'
      }
    }
    
    class << self
      
      def get db_type
        KEYWORD_MAPPINGS[db_type]
      end
      
    end
    
  end

  module DBInstanceValueMap
    DB_INSTANCE_MAP = {
      :facts => {
        :update_audit_columns => ", last_updt_user_id = ':last_updt_user_id', last_updt_dt = ':last_updt_dt', last_updt_tm =':last_updt_tm'"
      }
    }
    
  SCHEMA_TO_DB_INSTANCE_MAP = {
    :d5723d6 => :facts
  }
    
    class << self
      
      def get name
        DB_INSTANCE_MAP[name] || DB_INSTANCE_MAP[SCHEMA_TO_DB_INSTANCE_MAP[name]]
      end
      
    end
    
  end
  class StatementBuilder
    VARIABLE_REGEX = /:[a-zA-Z]+[a-zA-Z0-9_]*/
    
    attr_accessor :name_value_maps
    
    private
    
    def populate_template(template, name_value_map = {})
      s = template.clone
      name_value_map.each_pair do |key, value|
        s.gsub!(":#{key}", value.to_s) if value.respond_to? :to_s
      end
      s  
    end      
    
    public
    
    def initialize(template='', name_value_map={})
      @template = template
      @name_value_maps = [name_value_map]
    end
    
    def add name_value_map
      @name_value_maps << name_value_map
    end
    
    def build(template)
      statement = template.clone
      h = {}
      @name_value_maps.each { |name_value_map| h.merge!(name_value_map) }
      2.times do
        h.keys.collect{ |k| k.to_s }.sort.reverse.each do |key|
          statement = populate_template(statement, key.to_sym => h[key.to_sym])
        end
      end
      
      #@name_value_maps.each do |name_value_map|
      #  statement = populate_template(statement, name_value_map)
      #end
      statement
    end
    
    def to_sql
      build(@template)
    end
    
    def variables
      @template.scan(VARIABLE_REGEX).uniq
    end
    
    def missing_values
      to_sql.scan(VARIABLE_REGEX)
    end
    
    def is_valid?
      missing_values.size == 0
    end
    
    
  end
  
  class StatementRunner
    
    attr_reader :con, :schema
    attr_accessor :logger, :debug
    
    def initialize(connection_name, schema, queries)
      @connection_name = connection_name
      @con = ConnectionManager.get_connection(@connection_name)
      @schema = schema
      @queries = queries
      @global_mappings = {}
      @logger = Logger.new(STDOUT)
      @logger.level = Logger::ERROR
    end
    
    def add_mapping(m={})
      @global_mappings.merge(m)
    end
    
    def generate_statement(statement_name, params = {}, *rest)
      if statement_name.class == Symbol
        sb = StatementBuilder.new(@queries[statement_name][:statement])
      else
        sb = StatementBuilder.new(statement_name)
      end
      sb.add( DBKeywordMap.get(:global) )
      sb.add( DBInstanceValueMap.get(@schema) ) if @schema != ''
      sb.add( DBKeywordMap.get( ConnectionManager.get_connection_definition(@connection_name)[:db_type] ) )
      sb.add( {:schema => @schema.to_s} ) if @schema != ''
      sb.add( @global_mappings )
      sb.add( params )
      raise "Missing template variables: " + sb.missing_values.join(",") unless sb.is_valid?
      sb.to_sql
    end
    
    def trace(statement_name, statement, &block)
      @logger.debug "Executing #{statement_name}\n#{statement}" if @debug
      yield
    end
    
    def do(statement_name, params = {}, expected_rows_effected = -1)
      if statement_name.class == Symbol
        statement = generate_statement(statement_name, params)
      else
          statement = statement_name
      end
    
      rows_effected = -1
      begin
        @logger.debug "Executing\n#{statement_name}\n#{statement}\n"
        rows_effected = @con.do(statement)
      rescue Exception => e
        @logger.error e.to_s + "\n#{statement_name}\n#{statement}"
        raise
      end
      
      if (expected_rows_effected != -1) and (expected_rows_effected != rows_effected)
        @logger.error "Expected #{expected_rows_effected} rows to be effected, but #{rows_effected} rows were"
        @logger.error e.to_s + "\n#{statement_name}\n#{statement}"
        raise        
      end
      
      rows_effected
    end   
    
    def select_all_hash(statement_name, params = {})
      rs = []
      statement = generate_statement(statement_name, params)
      @logger.info("Executing\n#{statement}")
      begin
        @con.execute(statement) do |shd|
          shd.fetch_hash { |h| rs << h }
        end
      rescue Exception => e
        @logger.error e.to_s + "\n#{statement_name}\n#{statement}"
        raise
      end
      rs
    end    
    
    def select_all(statement_name, params = {})
      rs = []
      statement = generate_statement(statement_name, params)
      @logger.info("Executing\n#{statement}")
      begin
        rs = @con.select_all(statement)
      rescue Exception => e
        @logger.error e.to_s + "\n#{statement_name}\n#{statement}"
        raise
      end
      rs
    end
    
    def select_rows(statement_name, params = {})
      select_all(statement_name, params)
    end
    
    def select_row(statement_name, params = {})
      select_all(statement_name, params).flatten
    end
    
    def select_value(statement_name, params = {})
      select_row(statement_name, params).first
    end
    
    def select_values(statement_name, params = {})
      select_all(statement_name, params).flatten
    end
    
  end    
    

end

class String
  include DBClient::CoreExtensions::String
end

class Array
  include DBClient::CoreExtensions::Array
end
