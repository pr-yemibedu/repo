# Creates an ssh tunnel with port local/remote port forwards based on the
# configuration values at the end of this file.
# Currently uses PLINK as the ssh tunneling program.  PLINK must be in the
# path.

require 'yaml'
require 'pp'

# template variables are of the form :<variable name>. e.g. :name
def fill_template(template = "", values = {})
  s = template.clone
  values.each do |key, value|
    s.gsub!(":#{key}", value.to_s) if value.respond_to? :to_s
  end
  s
end

# load configuration, which is at the end of this file after __END__ marker
c = YAML::load(DATA)

# build local port forward options
c[:local_port_forward_options] = c[:local_port_forwards].collect do |port_forward_properties|
  fill_template("-L :listen_ip::local_port::host::remote_port", port_forward_properties)
end.join(" ")

# build remote port forward options
c[:remote_port_forward_options] = c[:remote_port_forwards].collect do |port_forward_properties|
  fill_template("-R :listen_ip::remote_port::host::local_port", port_forward_properties)
end.join(" ")

command_template = ":tunnel_command :tunnel_command_options -pw :password :local_port_forward_options :remote_port_forward_options :user@:host"

# display config information to the console
pp c

# execute tunnel program
system fill_template(command_template, c)

__END__
:variables:
  - &local_server_host localhost
  - &linux_server_host 192.168.1.101
  - &tricia_server_host 192.168.1.10
  - &default_listen_ip 0.0.0.0
:tunnel_command: plink
:user: owner
:host: pfeil.homeip.net
:password: password
:tunnel_command_options: -ssh -batch -N -A -X
:local_port_forwards:
  -
    :name: Squid Proxy Server
    :listen_ip: *default_listen_ip
    :local_port: 3128
    :host: *linux_server_host
    :remote_port: 3128
  -
    :name: VNC - Accessing Tricia's machine from work
    :listen_ip: *default_listen_ip
    :local_port: 5901
    :host: *tricia_server_host
    :remote_port: 5900    
  -
    :name: Subversion Server (svnserve)
    :listen_ip: *default_listen_ip
    :local_port: 3690
    :host: *linux_server_host
    :remote_port: 3690
  -
    :name: Linux SSH server
    :listen_ip: *default_listen_ip
    :local_port: 10122
    :host: *linux_server_host
    :remote_port: 22
  -
    :name: Linux HTTP server
    :listen_ip: *default_listen_ip
    :local_port: 10180
    :host: *linux_server_host
    :remote_port: 80    
  -
    :name: Linux FTP server
    :listen_ip: *default_listen_ip
    :local_port: 10121
    :host: *linux_server_host
    :remote_port: 21    
  -
    :name: MouseHole server
    :listen_ip: *default_listen_ip
    :local_port: 37004
    :host: *linux_server_host
    :remote_port: 37004    
:remote_port_forwards:
  -
    :name: VNC - Accessing Work Machine from home
    :listen_ip: *default_listen_ip
    :local_port: 5900
    :host: *local_server_host
    :remote_port: 5900
  -
    :name: Web Proxy (webproxy.merck.com) - Accessing Work Intranet from home 
    :listen_ip: *default_listen_ip
    :local_port: 8080
    :host: webproxy.merck.com
    :remote_port: 8080    
  -
    :name: OpenVPN - Accessing Work Network from home 
    :listen_ip: *default_listen_ip
    :local_port: 1194
    :host: *local_server_host
    :remote_port: 1194    
