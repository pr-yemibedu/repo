require 'builder'
require 'active_record'
require 'cgi'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'C:/Data/dev_working/solowiki_dev.db' 
  #:database => '/var/rails-apps/solowiki/db/solowiki_dev.db'
)

class Tiddler < ActiveRecord::Base
end

mediawikiw_page_list_import_xml_template = <<EOF
<mediawiki xml:lang="en">
page_list
</mediawiki>
EOF

mediawiki_page_import_xml_template = <<EOF
    <page>
      <title>ttl</title>
      <restrictions></restrictions>
      <revision>
        <timestamp>2007-06-05T12:00:00Z</timestamp>
        <contributor><username>pfeilbr</username></contributor>
        <comment></comment>
        <text xml:space="preserve">body</text>
      </revision>
    </page>   
EOF

def heading s
  r = s
  (1..5).each do |n|
    delim = "=" * n 
    r = "#{delim} #{$2} #{delim}" if r =~ Regexp.new("^(!){#{n},#{n}}([^!]*)$")
  end
  r
end

def inline_code s
  r = s
  20.times do
    r = "#{$1}<code>#{$2}</code>#{$3}" if r =~ /(.*)\{\{\{(.*)\}\}\}(.*)/
  end
  r
end

def code s
  r = s
  r = "<pre>"if r =~ /^(\{\{\{)$/
  r = "</pre>"if r =~ /^(\}\}\})$/
  r
end

def bold s
  r = s
  1.times do
    r = "#{$1}'''#{$2}'''#{$3}" if r =~ /(.*)''(.*)''(.*)/
  end
  r
end

def italics s
  r = s
  20.times do
    r = "#{$1}''#{$2}''#{$3}" if r =~ /(.*)\/\/(.*)\/\/(.*)/
  end
  r
end

def tiddlywiki_2_wikitext s
  lines = s.split("\\n")
  newlines = []
  lines.each do |line|
    s = heading(line.chomp)
    s = inline_code(s)
    s = code(s)
    s = italics(s)
    s = bold(s)
    newlines << s
  end
  newlines.join("\n")
end

def create_mediawiki_import_page_xml tiddler
  x = Builder::XmlMarkup.new(:indent => 1)
  x.page {
    x.title tiddler.title
    x.restrictions ""
    x.revision {
      x.timetamp "2007-06-04T13:15:00Z"
      x.contributor {
        x.username "pfeilbr"
      }
      x.comment ""
      x.text tiddlywiki_2_wikitext(tiddler.body)
    }
  }
  x
end

#x = Builder::XmlMarkup.new(:indent => 1)
#tiddlers = Tiddler.find_all
#x.mediawiki('xml:lang' => "en") {
#  tiddlers.flatten.each do |tiddler|
#    x.page {
#      x.title tiddler.title
#      x.restrictions ""
#      x.revision {
#        x.timetamp "2007-06-04T13:15:00Z"
#        x.contributor {
#          x.username "pfeilbr"
#        }
#        x.comment ""
#        x.text tiddlywiki_2_wikitext(tiddler.body)
#      }
#    }  
#  end
#}

page_list_xml = ""
tiddlers = Tiddler.find_all
tiddlers.flatten.each do |tiddler|
  page_xml = mediawiki_page_import_xml_template
  page_xml = page_xml.gsub("ttl", tiddler.title)
  page_xml = page_xml.gsub("body", tiddlywiki_2_wikitext(tiddler.body))
  page_list_xml = page_list_xml + "\n" + page_xml
end

File.new("c:/temp/a.txt", "w").puts mediawikiw_page_list_import_xml_template.gsub("page_list", page_list_xml).gsub("\\n", "\n")

#tiddlywiki_markup = DATA.readlines.join("\\n")
#puts tiddlywiki_2_wikitext(tiddlywiki_markup)

__END__
!!Common Commands
|!Action|!Description|
|Extract tar archive|{{{tar xvf file.tar}}}|
|Extract compressed tar archive|{{{tar xzvf file.tar.gz}}}|
|Extract zip file|{{{unzip file.zip}}}|
|List files in tar archive|{{{tar tf file.tar}}}|
|Create compressed tar of directory|{{{tar cvzf file.tar.gz directory}}}|
|Create tar of directory|{{{tar cvf file.tar directory}}}|
|show disk usage|{{{du -sh dir}}}|
|show filesystem usage|{{{df -h}}}|
|show memory usage|{{{free -m}}}|
|list files by last modified time|{{{ls -t -r -1}}}|

!!Using Bash History
* ctrl-r history search mode
* type string to find most recent matching command
* press enter to execute or esc to bring it up for editing

!!Links
[[Linux Command Line Reference|http://www.pixelbeat.org/cmdline.html]]
[[Using Bash's History Effectively|http://www.talug.org/events/20030709/cmdline_history.html]]
[[.bashrc example|http://wehavenoproduct.com/~cayla/.bashrc.html]]





http://www.rubycentral.com/book/html/irb.html