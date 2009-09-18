require 'rubygems'
require 'active_support'
require 'redcloth'
require 'acts_as_versioned'

h = {:name=>'brian', :age=>28}
puts h.to_json
puts h.to_xml

exit
# added this comment
require 'pp'
a = [0, 1, 2, 3]
puts a.find_all { |i| i < 2 }

print ARGV.length
print Class.class.class

def variable_args(hash, *arr)
  pp hash
  pp arr
end

variable_args({:name => "Brian", :age => 28}, "1", "2", "3")

result = `echo %TEMP%`
puts result

be_template = <<-EOF
class <%= class.name %>
{
  public <%= class.name %>()
  {
  
  }
  
  <% fields.each{ |field| %>
  <%= field.name %>
  <% } %>
}
EOF

print be_template


a=2
puts [1,2,3,4,5][a..-1]

for e in [1,2,3]
  puts e
end

h = {:name => 'Brian'}
pp h
puts "Hello #{h[:name]}"

for x in nil || []
  puts x
end

class Person
  def initialize
    puts self.class.to_s
  end
end

Person.new

require 'markaby'
mab = Markaby::Builder.new
puts ['one', 'two', 'three'].map { |e|
  mab.capture { a e, :href=>e }
}

module A
  def hello
    "hello"
  end
end

puts A::hello

exit

require 'rexml/document'
require 'open-uri'

open('http://localhost/CIR360View.xsd') { |f|
  REXML::Document.new(f.read).root.get_elements('//element[@name="TouchpointIntrctn"]//element').each do |tag|
    name = tag.attributes['name']
    puts name
    tag.get_elements("//attribute").each do |attrtag|
      puts "\t" + attrtag.attributes['name']
    end
  end  
}