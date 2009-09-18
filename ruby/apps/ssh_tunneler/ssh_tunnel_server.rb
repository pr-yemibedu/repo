require 'logger'
require 'yaml'
require 'net/ssh'

#require "rubyscript2exe"
#exit if RUBYSCRIPT2EXE.is_compiling?

class SshTunnelServer < Logger::Application
  
  def initialize
    script_name = File.basename(__FILE__, ".rb")
    super(script_name)
    @config = YAML::load_file("#{script_name}.yml")
    set_log "#{script_name}.log"
  end
  
  def run

    @log.info "Connecting #{@config[:user]}@#{@config[:host]} ..."
    session = Net::SSH.start(@config[:host], @config[:user], @config[:password])
    @log.info session.open? ? "Connected!" : "Failed to connect!"

    trap("SIGINT") do
      @log.info "Forcefully closed by user"
      session.close
      Kernel.exit
    end
      
    begin    
      # setup local forwards
      for fwd in @config[:local_forward] || []
        @log.info "Initializing local forward: #{fwd[:port]}:#{fwd[:host]}:#{fwd[:hostport]}"
        session.forward.local( fwd[:port], fwd[:host], fwd[:hostport] )
      end
      
      # setup remote forwards
      for fwd in @config[:remote_forward] || []
        @log.info "Initializing remote forward: #{fwd[:port]}:#{fwd[:host]}:#{fwd[:hostport]}"      
        session.forward.remote_to( fwd[:port], fwd[:host], fwd[:hostport] )
      end
      
      session.loop { session.open? }
    rescue Exception => e
      @log.info "Exception occurred:"
      @log.info e.message
    end
  end

end

status = SshTunnelServer.new.start

#pid = nil

#at_exit {
#  Process.kill(pid) unless pid
#}

#while true
#  pid = Process.fork { status = SshTunnelServer.new.start }
#  Process.wait
#  sleep 5
#end