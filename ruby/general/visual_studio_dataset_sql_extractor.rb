require 'rexml/document'
require 'ostruct'
require 'pp'

class DataSetDefinition < OpenStruct

  def initialize(path = nil)
    super
    parse(path) if path
  end
  
  def parse(path)
    self.path = path
    self.table_adapters = []
    open(path) { |file|
      REXML::Document.new(file.read).root.get_elements('//TableAdapter').each do |table_adapter_node|
        table_adapter = OpenStruct.new
        table_adapter.name = table_adapter_node.attributes['UserDataComponentName']
        table_adapter.commands = []
        command_nodes = table_adapter_node.get_elements('//SelectCommand')
#        command_nodes = table_adapter_node.get_elements('//*[name()="InsertCommand" or name()="SelectCommand" or name()="UpdateCommand" or name()="DeleteCommand" ]')
        command_nodes.each do |command_node|
          puts command_node.get_text('//CommandText').value
          commands = extract_commands(command_node)
          table_adapter.commands = table_adapter.commands + commands
        end
        self.table_adapters << table_adapter
      end  
    }
    self    
  end
  
  def extract_commands(command_node)
    commands = []
    command_node.get_elements('//DbCommand[@ModifiedByUser="True"]').each do |user_defined_command_node|
      command = OpenStruct.new
      command.name = user_defined_command_node.name 
      command.text = user_defined_command_node.get_text('//CommandText').value
      commands << command
    end
    commands
  end
  
  def to_s
    s = "---------------------------------------\n"
    s << self.path << "\n\n"
    self.table_adapters.each do |table_adapter|
      table_adapter.commands.each do |command|
        s << "#{table_adapter.name} - #{command.name}" << "\n"
        s << command.text << "\n\n"
      end
    end
    s
  end
  
end

data_set_definitions = []

source_directory = "C:/clearcase_storage/views/Insight_Main_Branch/USHH_SFA_Insight/Insight.NET/"
file_paths = Dir.glob("#{source_directory}**/*.xsd")

open('c:/temp/Insight.NET_Dataset_Definitions.txt', 'w') do |output_file|
  file_paths[1..2].each do |file_path|
    output_file << DataSetDefinition.new(file_path).to_s << "\n"
  end
end