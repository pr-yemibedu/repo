# Control script for the KBServer service.

require 'optparse'
require 'win32/service'
include Win32

# You will want to change these values.
process_looper_home = 'C:\Documents and Settings\Pfeilbr\user\ExploringRuby\trunk\apps\process_looper'
process_looper_prog = process_looper_home + '\process_looper_daemon.rb'
process_looper_svc = 'ProcessLooperSvc'
process_looper_name = 'Process Looper Service'

ssh_tunnel_server_prog = 'c:\data\bin\ssh_tunnel_server.exe'

OPTIONS = {}

ARGV.options do |opts|
    opts.on("-d",     "--delete",      "Delete the service") { 
     OPTIONS[:delete] = true }
    opts.on("-s",     "--start",       "Start the service") { 
     OPTIONS[:start] = true }
    opts.on("-x",     "--stop",        "Stop the service") { 
     OPTIONS[:stop] = true }
    opts.on("-i",     "--install",     "Install the service") { 
     OPTIONS[:install] = true }
    opts.on("-h",     "--help",        "Show this help message") { 
     puts opts; exit }
    opts.parse!
end

# Install the service.
if OPTIONS[:install]
    svc = Service.new
    svc.create_service do |s|
        s.service_name = process_looper_svc
        s.display_name = process_looper_name
        s.binary_path_name = 'c:\ruby\bin\ruby.exe ' + "\"#{process_looper_prog}\" \"#{ssh_tunnel_server_prog}\""
        # This is required for now - bug in win32-service
        s.dependencies = [] 
    end
    svc.close
    puts "Process Looper service installed"
end    

# Start the service.
if OPTIONS[:start]
    Service.start(process_looper_svc)
    started = false
    while started == false
        s = Service.status(process_looper_svc)
        started = true if s.current_state == "running"
        break if started == true
        puts "One moment, " + s.current_state
        sleep 1
    end
    puts "Process Looper service started"
end

# Stop the service.
if OPTIONS[:stop]
    begin
        Service.stop(process_looper_svc)
    rescue
    end    
    puts "Process Looper service stopped"
end

# Delete the service.  Stop it first.
if OPTIONS[:delete]
    begin
        Service.stop(process_looper_svc)
    rescue
    end
    Service.delete(process_looper_svc)    
    puts "Process Looper service deleted"
end
