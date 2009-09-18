# constant
EmpireStateBuilding = "350 5th Avenue, NYC, NY"

#global variable
$chunky = 8

# ranges
(1..3)
('a'..'z')
(0...5) # three dots.  last value of range is excluded

# arrays
[1, 2, 3]
['coat', 'mittens', 'snowboard']

# hash
{'a' => 'aardvark', 'b' => 'badger'}

# regular expressions
/ruby/
/[0-9]+/
/^\d{3}-\d{3}-\d{4}/

# nil
plastic_cup = nil

puts "Plastic cup is empty" if plastic_cup.nil?

unless plastic_cup
  "Again the plastic cup is empty"
end

glass_cup = nil
print "We're using plastic 'cause we don't have glass." if plastic_cup unless glass_cup

# equals
if nil.==( true )
  print "This will never see realization." 
 end
 
at_hotel = true
email = if at_hotel
           "why@hotelambrose.com" 
         else
           "why@drnhowardcham.com" 
         end

# concatenation
myStringList = "1"
myStringList << " 2"
myStringList << " 3"

code_word = { :a => "hello code word" }
puts code_word.[](:a)


loop do
  print "Much better." 
  print "Ah.  More space!" 
  print "My back was killin' me in those crab pincers." 
  break
end

def hello1(name)
  return "Hello " + name
end

def hello2(name)
  return "Hello #{name}"
end

# return value is value of last statement.  No need for explicit "return"
def hello3(name)
  "Hello #{name}"
end

puts hello1("Brian")
puts hello2("Brian")
puts hello3("Brian")

animals = %w{ bird cat dog fish }
puts "a[0] = #{animals[0]}"
animals.each {|a| print a, " "}

puts "match" if "Perl" =~ /Perl/
puts "match" if "12:34:56" =~ /\d\d:\d\d:\d\d/

a = ["a","b","c"]
puts a.join
puts a.length

def callBlock
  yield
  yield
end

callBlock { puts "In the block" }

printf "Number: %5.2f, String: %s\n", 1.23, "hello"

puts "Type something and press enter: "
line = gets
puts "This is what you typed: #{line}"

class Song
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
  
  def to_s
    "my to_s " + inspect
  end
end

aSong = Song.new("In Da Club", "50 Cent", 180)
puts aSong.to_s

class Song
  # class variable
  @@plays = 0
  # allows access to instance members
  attr_reader :name, :artist, :duration, :popularity
  attr_writer :duration
  
  # class method
  def Song.plays
    return @@plays
  end
  
  def Song.plays=(rval)
    @@plays = rval
  end  
  
  # setter/writer method
  def popularity=(rval)
    @popularity = rval
  end
end
aSong = Song.new("Bicylops", "Fleck", 260)
aSong.duration = 23
aSong.popularity = "very"
puts aSong.artist + " " + aSong.name + " " + aSong.duration.to_s + " popularity = " +  aSong.popularity
Song.plays = 5
puts Song.plays

# inheritance
class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
end

aSong = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts aSong.to_s
gets

# arrays
a = [1, 'two', 3.0]
print a.join(" | "), "\n"

# hash tables
person = {
  'age' => 28,
  'height' => '6 2',
  'name' => 'Brian Pfeil'
}
print person['name'], "\n"
person['name'] = 'John Smith'
print person['name'], "\n"
print person[:name], "\n"

# control structures
count = 1
if count > 10
  puts "Try again"
elsif count == 3
  puts "You lose"
else
  puts "Enter a number"
end

count = 1
while count < 100 and count <= 30
  count+=1
end

# statement modifiers
puts "Danger, Will Robinson" if count > 5

count = count*count  while count < 1000

# singleton pattern
class Logger
  private_class_method :new
  @@logger = nil
  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end
end

class A

  # default is public
  def method1
    "method1"
  end

protected

  def method2
    "method2"
  end
  
private

  def method2
    "method3"
  end

public

  def method3
    "method3"
  end
  
end

class B

  def method1
    "method1"
  end
  
  def method2
    "method2"
  end

  def method3
    "method3"
  end
  
  def method4
    "method4"
  end  
  
  # access control functions
  public    :method1, :method4
  protected :method2
  private   :method3
end

class C

  def initialize
    @songs = ['a', 'b', 'c']
  end
  
  def [](key)
    return @songs[key] if key.kind_of?(Integer)
    return @songs.find { |aSong| aSong.to_s == key }
  end
  
end

[ 1, 3, 5 ].each { |i| puts i }
["H", "A", "L"].collect { |x| x.succ }

class Array  
  def inject(n)  
     each { |value| n = yield(n, value) }  
     n  
  end  
  def sum  
    inject(0) { |n, value| n + value }  
  end  
  def product  
    inject(1) { |n, value| n * value }  
  end  
end 

puts [ 1, 2, 3, 4, 5 ].sum
puts [ 1, 2, 3, 4, 5 ].product

def nTimes(aThing)  
  return proc { |n| aThing * n }  
end  
 
p1 = nTimes(23)  
puts p1.call(3)  
puts p1.call(4)

def fn(name, &fn1)
  if block_given?
    fn1.call
  end
  puts name
end

fn("Brian") { puts "Hello" }

puts %q/general single-quoted string/
puts %Q!general double-quoted string!
puts %Q{Seconds/day: #{24*60*60}}

"Seconds/day: #{24*60*60}"
"#{'Ho! '*3}Merry Christmas"
"This is line #$."

# here document
aString = <<END_OF_STRING
    The body of the string
    is the input lines up to
    one ending with the same
    text that followed the '<<'
END_OF_STRING

puts aString

f = File.open("c:\\boot.ini", "r")
f.each do |line|
  print line
end
f.close

require "find"
Find.find("C:\\program files\\NetMeeting") do |f|
  Find.prune if f == "."
  puts f
end

class D
  # class constants
  SIZE = 10
  
  #enumeration
  ARGUMENT_FLAGS = [NO_ARGUMENT = 0, REQUIRED_ARGUMENT = 1,
    OPTIONAL_ARGUMENT = 2]  
  
#parrallel assignment  
  STATUS_YET, STATUS_STARTED, STATUS_TERMINATED = 0, 1, 2
end

puts D::SIZE, D::REQUIRED_ARGUMENT, D::ARGUMENT_FLAGS

class E
  
  def f1
    puts "hello f1"
  end
  
  alias f2 f1
end

x = E.new
x.f1
x.f2

def f1(n)
  case n
    when 0
      puts 0
    when 1
      puts 1
    else
      puts "not 0 or 1"
  end
end

f1(0)
f1(9)

module M1
  C1 = 5
  
  class A1
    def A1.f
      puts "M1::A1.f"
    end
  end
end

puts M1::C1
M1::A1.f

class C1
  def f1(s)
    puts "hello " + s
  end
end

c = C1.new
c.send("f1", "brian")
c.send(:f1, "neuman")
puts DATA.readlines.join(" | ")


puts "a" unless "restaurant".include? "aura"


['toast', 'cheese', 'wine'].each { |food| print food.capitalize }

# variable length arguments
require 'pp'
def variable_args(hash, *arr)
  pp hash
  pp arr
end

variable_args({:name => "Brian", :age => 28}, "1", "2", "3")

__END__
some data
some more