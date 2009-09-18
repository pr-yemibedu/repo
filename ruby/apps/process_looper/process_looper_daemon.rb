require 'win32/service'
require 'logger'
require 'thread'
require 'FileUtils'
include Win32

class ProcessLooperDaemon < Daemon
  
  def initialize
    begin
      script_name = File.basename(__FILE__, ".rb")
      @log = Logger.new("c:\\temp\\#{script_name}.log")
    rescue Exception => e
      @log.error e.message
      service_stop
    end    
  end
  
  def service_main
    begin
      @log.info "service started"
      command = ARGV[0]
      while true
        @log.info "launching #{command}..."
        FileUtils.cd('C:\Data\bin')
        system(command)
        @log.info "finsihed #{command}..."        
        sleep 5
      end
    rescue StandardError, InterrupError => e
      @log.error e.message
       service_stop
    end     
  end
  
  def service_stop
    @log.info "service stopped"
    exit
  end
end

d = ProcessLooperDaemon.new
d.mainloop
