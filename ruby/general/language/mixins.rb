#----------------------------------------------------------------------------
# create a module that defines a method we would like to use for multiple classes
module Debug
	def whoAmI?
		"#{self.class.name} (\##{self.object_id}): #{self.to_s}" 
	end
end

class Phonograph  
  include Debug # add the whoAmi? method to this class 
  
  def initialize(name)
	@name = name
  end
end

class EightTrack  
  include Debug # add the whoAmi? method to this class
  
  def initialize(name)
	@name = name
  end
end
 
ph = Phonograph.new("West End Blues")  
et = EightTrack.new("Surrealistic Pillow")  
 
puts ph.whoAmI?
puts et.whoAmI?
