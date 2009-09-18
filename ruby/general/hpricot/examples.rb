require 'hpricot'
require 'open-uri'

ENV['http_proxy'] = 'http://webproxy.merck.com:8080'

doc = Hpricot(open("http://www.paskiandride.com/forums/index.php?showforum=43"))
topic_links = (doc/"a[@id*='tid-link']")  # links that contain id like 'tid-link'
topic_links.each do |a|
  # puts a.inner_text, a['href']
  puts open(a['href']).readlines.join
end