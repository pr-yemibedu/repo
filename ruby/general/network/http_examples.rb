require 'net/http'
require 'uri'
require 'open-uri'

# used if behind firewall
proxy_addr = 'webproxy.merck.com'
proxy_port = 8080

#----------------------------------------------------------------------------
# using open-uri
# proxy setting are pulled from environment variables
ENV['http_proxy'] = 'http://webproxy.merck.com:8080'
open('http://www.thepfeils.com/ip_address.php') { |f|
  puts f.gets
}

#----------------------------------------------------------------------------
# create connection with proxy set
http = Net::HTTP.new('www.cnn.com', 80, proxy_addr, proxy_port)
http.start do |http|
	resp, data = http.get('/index.html')
	puts resp.body # returned content
	puts data # returned content
	puts resp.code # http response code
	puts resp.message # http response message (e.g. Not Found - for 404)
	resp.each { |header_name, header_value| puts "Header Name=#{header_name}, Header Value=#{header_value}" }
	puts 'content-type header exists' if resp.key?('content-type')
	puts 'content-type = ' + resp['content-type']
end

#----------------------------------------------------------------------------
http = Net::HTTP::Proxy(proxy_addr, proxy_port)
http.start('www.google.com') {|http|
  response = http.get('/index.html')
  puts response.body
}