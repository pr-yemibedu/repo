require 'net/https'
require 'rexml/document'

proxy_addr = 'webproxy.merck.com'
proxy_port = 8080

delicious_host = 'api.del.icio.us'
delicious_port = 443
delicious_path = '/v1/tags/get'

def get_authenticated(path, http)
  request = Net::HTTP::Get.new(path)
  request.basic_auth 'pfeilbr', '<password here>'
  response = http.request(request)
  response.value
  response.body
end

http = Net::HTTP.new(delicious_host, delicious_port, proxy_addr, proxy_port)
http.use_ssl = true
http.start do |http|
  xml = get_authenticated(delicious_path, http)
  puts xml

#  REXML::Document.new(xml).root.get_elements('tag').each do |tag|
#    name = tag.attributes['tag']
#    if name != name.downcase
#      sleep 1 # requested by del.icio.us
#      #get_authenticated('/v1/tags/rename?old=' + name + '&new=' + name.downcase, http)
#      puts "Renamed '" + name + "' to '" + name.downcase + "'."
#    end
#  end
end