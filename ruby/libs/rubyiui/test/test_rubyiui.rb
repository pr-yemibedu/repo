require 'rubygems'
require 'markaby'
require 'tidy'

module InstanceMethods

  def view &b
    html {
      head {
        
      }
      body {
        capture &b
      }
    }
  end
  
#  def view &b
#    html {
#      head {
#        script "hello"
#      }
#      yield
#    }
#  end

  def nav_bar(o = {})
    div(:id => o[:id]) {
      h1 o[:title]
      a "back"
    }
  end
  
  def panel(o = {})
    div(:class => "panel", :id => o[:id], :title => o[:title])
  end
  
  def list(o = {}, &b)
    ul(:id => o[:id], :title => o[:title]) {
      yield
    }
  end
  
  def list_item(o = {})
    li {
      a o[:name], :href => o[:href]
    }
  end
  
  def form
    "myform"
  end
  
end

#iphone = Markaby::Builder.new({}, self, &block)
require 'rubyiui'
iui = RubyiUI::Builder.new
#iui = Markaby::Builder.new
#iui.extend(InstanceMethods)
title = "MyApp"
html = iui.view {
  nav_bar :title => title, :id => "nav1" 
  panel :id => "Contacts", :title => "Contacts"
  list(:title => "Details", :id => "detail1") {
    [1,2,3].each{|e| list_item :href => e.to_s, :name => e.to_s }
  }
}.to_s

html = iui.list(:title => title, :id => "detail2") {
  [4,5,6].each{|e| list_item(:href => "#{title}_#{e.to_s}", :name => e.to_s) }
}.to_s


#puts iui.nav_bar({:title => title, :id => "nav2"})
#puts iui.panel({:title => title, :id => "panel1"})
#puts iui.form
iui.table {
  table_row do
    "Brian Pfeil"
  end
}
#exit

iphone = Markaby::Builder.new
iphone.html {
  head {
    title "My iPhone App"
  }
  body(:onclick => "alert('hello world')") {
    h1 "hello word"
    p "this is a test"
    a "link", {:href=>"#", :id=>'one'}
  }
}.to_s

Tidy.path = '/usr/lib/libtidy.A.dylib'
Tidy.open do |tidy|
  puts tidy.clean(html)
end