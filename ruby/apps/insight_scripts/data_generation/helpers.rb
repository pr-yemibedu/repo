module Helpers

  DATE_FORMAT_STRING = '%m/%d/%Y'
  TIME_FORMAT_STRING = '%I:%M:%S'
  
  def c(connection_name, schema, statements_store)
    StatementRunner.new(connection_name, schema, statements_store)
  end

  def chunk(arr, chunk_size)
    chunked_array = []
    current_chunk = []
    arr.each_with_index do |value, index|
      if (index % chunk_size) == 0
        if current_chunk.size > 0
          chunked_array << current_chunk
        end
        current_chunk = []
      end
      current_chunk << value
    end
    
    if current_chunk.size > 0
      chunked_array << current_chunk
    end  
    chunked_array
  end
  
  def test_statements(e, statements)
    statements.each_pair do |name, properties|
      case properties[:type]
        when :single_value
          e.select_value(name, properties[:test_params])
        when :multiple_values
          e.select_values(name, properties[:test_params])
        when :single_row
          e.select_rows(name, properties[:test_params])
        when :multiple_rows
          e.select_rows(name, properties[:test_params])
        when :insert_single_row
          # do nothing for insert
        when :update_single_row
          # do nothing for an update
        when :delete_multiple_rows
          # do nothing for delete
        when :delete_single_row
          # do nothing for delete
        else
          raise "Statement type \"%s\" not recognized" % [properties[:test_params].inspect]
      end
    end
  end
  
  def generate_insert_templates(statement_runner, table_names)
    insert_template = %{insert into :table_name (:column_names) values (:column_values)}

    table_names.each do |table_name|
      sth = statement_runner.con.execute("select * from d5723d6.#{table_name} fetch first 1 rows only")
      column_names, column_value_templates = [], []
      
      sth.column_info.each do |info|
        #pp info
        column_names << info['name']
        if info['type_name'] =~ /int/i
          column_value_template = ":" + info['name']
        else
          column_value_template = "'" + ":" + info['name'] + "'"
        end
        column_value_templates << column_value_template
      end
      statement = insert_template.fill( { :table_name => table_name, :column_names => column_names.join(', '), :column_values => column_value_templates.join(', ') } )
      pp statement.downcase
      sth.finish  
    end
  end

  def local_var_values(vars, b, options = {})
    options[:exclude] ||= []
    s=""
    vars.each do |var|
      s += "#{var} =\n#{eval(var, b)}\n\n" unless options[:exclude].include?(var.to_sym)
    end
    s
  end
  
  def q s
    "\"#{s}\""
  end
  
  def save_to_file(s, path)
    tmp_path = "#{path}.tmp"
    File.open(tmp_path, "w") {|file| file.puts(s) }
    mv(tmp_path, path)
  end
  
  def save_to_file_as_yaml(o, path)
    save_to_file(o.to_yaml, path)
  end  
  
  def time_to_execute
    start = ::Time.now
    yield
    ::Time.now - start
  end
  
  def delete_ncm_data_from_table(dbclient, table_name)
    statement = "delete from #{dbclient.schema.to_s}.#{table_name} where last_updt_user_id = 'TSTNCM01'"
    dbclient.logger.info("Executing\n#{statement}")
    rows_affected = dbclient.con.do(statement)
    rows_affected
  end  
  
  def activate_faa(dbc, l, faa)
      h = {}
      h.merge!( NCMSFAImpactConfig.get(:db2_audit_column_values) )
      h.merge!( {:fld_actv_acct_nmbr => faa, :end_dt => '12/31/9999', :last_updt_user_id => 'TSTNCM01'} )
      statement = dbc.generate_statement(:activate_fld_actv_acct, h)
      l.info( "Executing\n#{statement}" )
      rows_affected = dbc.do(statement, {}, 1)
      l.info("rows_affected = #{rows_affected}")  
  end  

  def load_yaml(name, &blk)
    base_dir = "c:/data/dev_working/ncm_sfa_impact/supporting_data/"
    path = "#{base_dir}#{name.to_s}.yml"
    data = nil
    if File.exists?(path)
      data = YAML::load_file(path)
    else
      data = yield
      save_to_file_as_yaml(data, path)
    end
    data
  end

end
