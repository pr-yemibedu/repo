require 'win32ole'
require 'dbi'

module RubySiebel

  module SiebelQueryConstants
    FORWARD_BACKWARD = 0
    FORWARD_ONLY = 1
  end

  module SiebelNewRecordConstants
    NEW_BEFORE = 0
    NEW_AFTER = 1
    NEW_BEFORE_COPY = 2  
    NEW_AFTER_COPY = 3
  end

  class SiebelApplication < WIN32OLE
  
    def initialize(options = {}, &block)
      super("SiebelDataControl.SiebelDataControl")
      @options = options
      if block_given?
        yield init_siebel_application(@options) 
      end
      self
    end

    def init_siebel_application(options = {})
      Login "host=\"siebel.TCPIP.NONE.NONE://#{@options[:hostname]}:2321/#{@options[:enterprise_name]}/#{@options[:object_manager]}\"", @options[:siebel_username], @options[:siebel_password]
      error_code = GetLastErrCode()
      raise Exception.new(GetLastErrText) if error_code != 0
      self
    end
    
    def get_business_object(name)
      business_object = GetBusObject(name)
      class << business_object; include BusinessObjectInstanceMethods; end
      business_object.options = @options
      business_object.name = name
      business_object
    end    
  
  end

  module SiebelApplicationInstanceMethods
  
    def options=(options)
      @options = options
    end
  
    def options
      @options
    end
    
  end

  module SiebelApplicationClassMethods
  end
  
  module CommonInstanceMethods
    def options=(options); @options = options; end
    def options; @options; end
    
    def name=(name); @name = name; end
    def name; @name; end    
  end
  
  module BusinessObjectInstanceMethods
    include CommonInstanceMethods
  
    def get_business_component(name)
      business_component = self.GetBusComp(name)
      class << business_component; include BusinessComponentInstanceMethods; end
      business_component.options = @options
      business_component.name = name
      business_component
    end
    
  end

  module BusinessObjectClassMethods
  end

  module BusinessComponentInstanceMethods
    include CommonInstanceMethods
    include SiebelQueryConstants
    include SiebelNewRecordConstants
    
    def field_names
      conn = DBI.connect("DBI:ODBC:#{@options[:db_name]}", @options[:db_username], @options[:db_password])
      rs = []
      conn.execute("SELECT bc.name bcn, f.name fn  FROM siebel.S_BUSCOMP bc, siebel.S_FIELD f WHERE bc.name = '#{@name}' AND bc.row_id = f.buscomp_id") do |shd|
        shd.fetch_hash { |h| rs << h }
      end
      rs.collect{ |r| r['FN']}.sort
    end
    
    # search_expression examples (field values must be double-quoted):
    #   [Name] = "John"
    #   [Name] like "*Smith*"
    def query(search_expression = nil, fields = nil)
      result_set_fields = (fields) ? fields : field_names
      result_set_fields.each { |f| ActivateField(f) }
      self.SetSearchExpr(search_expression) if search_expression
      self.ExecuteQuery(FORWARD_ONLY)
      self.FirstRecord
      rs = []
      begin
        rs << result_set_fields.inject({}){ |h, name| h[name] = self.GetFieldValue(name); h }
      end while self.NextRecord
      rs
    end
    
    def new_record_based_on_template_record(search_expression, values = {})
      self.SetSearchExpr(search_expression)
      self.ExecuteQuery(1)
      self.FirstRecord
      self.NewRecord(NEW_AFTER_COPY)
      values.each{|name, value| self.SetFieldValue name, value }
      self.WriteRecord
    end
    
  end

  module BusinessComponentClassMethods
  end

end
