#----------------------------------------------------------------------------
# basic class
class Song

  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
  
  # override default to_s
  def to_s
    "my to_s " + inspect
  end
end

# create new instance with constructor
song = Song.new("In Da Club", "50 Cent", 180)
puts song.to_s

#----------------------------------------------------------------------------
# you can add to a class just by declaring the class again
class Song

  # class variable
  @@plays = 0
 
  # allows access to instance members
  attr_reader :name, :artist, :duration, :popularity
  attr_writer :duration
  attr_accessor :length # getter & setter
  
  # class getter method
  def Song.plays
    return @@plays
  end
  
  # class setter method
  def Song.plays=(rval)
    @@plays = rval
  end  
  
  # instance member setter method
  def popularity=(rval)
    @popularity = rval
  end
  
  # instance member getter method
  def genre
	@genre
  end
  
  # instance member setter method
  def genre=(rval)
	@genre = rval
  end
end

song = Song.new("Bicylops", "Fleck", 260)
song.duration = 23
song.popularity = "very"
puts song.artist + " " + song.name + " " + song.duration.to_s + " popularity = " +  song.popularity
Song.plays = 5
puts Song.plays

#----------------------------------------------------------------------------
# inheritance
class KaraokeSong < Song

  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration) # call base class initializer/constructor
    @lyrics = lyrics
  end
  
end

song = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts song.to_s

#----------------------------------------------------------------------------
# singleton pattern
class Logger

  private_class_method :new
  @@logger = nil

  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end

end

# loogers 1&2 will hold references to the same object
logger1 = Logger.create
logger2 = Logger.create
puts "logger1 == logger2" if logger1.equal?(logger2)

#----------------------------------------------------------------------------
# class security/access
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

# index operator
class C

  def initialize
    @songs = ['a', 'b', 'c']
  end
  
  def [](key)
    return @songs[key] if key.kind_of?(Integer)
    return @songs.find { |aSong| aSong.to_s == key }
  end
  
end

c = C.new
puts c[1] # numeric index
puts c['a'] # string index

#----------------------------------------------------------------------------
# add 2 new aggregation method to the built-in Array class
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

#----------------------------------------------------------------------------
class MyClass
    def initialize(inithash)
        @start = Time.new
        @age = 0
        for key, value in inithash
            instance_variable_set("@#{key}", value)
        end
    end
    
    attr_accessor :attr1, :attr2
end

c = MyClass.new( {:attr1 => 'val1', :attr2 => 'val2'} )
print c.attr1, c.attr2

