require 'net/ssh'
require 'date'

def exec_cmd (session, cmd)
  session.open_channel do |channel|
  
    # this handles the data from the command (it's asynchronous)
    channel.on_data do |ch, data|
      #puts data
    end
    #puts "executing: #{cmd}"
    channel.exec(cmd)
  end
end

Net::SSH.start('thepfeils.com', 'thepfeil', '<password here>') do |session|
  hostname = 'uswpco00643' # %x{hostname}.gsub("\n", "")
  timestamp = DateTime.now.strftime('%m/%d/%Y %I:%M:%S %p')
  exec_cmd(session, "echo #{timestamp} >/home/thepfeil/public_html/heartbeat/#{hostname}.txt")
  session.loop # hold session open while channels are open
  puts "done"
end