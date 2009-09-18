require 'logger'
require 'yaml'
require 'pp'

require 'rubyscript2exe'
exit if RUBYSCRIPT2EXE.is_compiling?

module SystemOperations
  
  def s s
    puts s
    #system s
  end
  
  def get_file_path file_info
    file_info[:target_directory] + "\\" + file_info[:name]
  end
  
  def kill_process name
    s g(:kill_command_template) % name
  end
  
  def regasm file_info

    switches = ""
    (file_info[:regasm] || []).each do |switch|
        switches = switches + " /#{switch}"
    end

    s "#{g(:regasm_program)} #{get_file_path(file_info)} #{switches}"
      
  end

end

class InsightInstaller < Logger::Application
  
  include SystemOperations
  
  def initialize
    script_name = File.basename(__FILE__, ".rb")
    super(script_name)
    @launch_dir = RUBYSCRIPT2EXE.userdir
    @config = YAML::load_file("#{@launch_dir}/#{script_name}.yml")
    set_log "#{script_name}.log"
  end
  
  # shortform for accessing configuration settings
  def g s
    @config[s]
  end
  
  def run
    @log.info "Start"
    pp "@launch_dir = #{@launch_dir}"
    kill_processes
    install_files
    @log.info "End"
  end
  
  def kill_processes
    g(:kill_process_list).each do |process_name|
      kill_process process_name
    end
  end
  
  def install_files
      g(:install_files).each do |file_info|
        regasm file_info if file_info['regasm']
      end
  end

end

status = InsightInstaller.new.start