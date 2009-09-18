require 'pp'

#############################################################################
# BEGIN: Demostrate adding instance and singleton methods to a class
module ArithmeticHelpers
  
  # this gets called when the ArithmeticHelpers is included in another class or module
  def self.included(base)
    base.class_eval do
      extend SingletonMethods # add singleton/class methods to calling class or module
      include InstanceMethods # add instance methods to calling class or module
    end    
  end
  
  module SingletonMethods
    def add(a,b)
      a+b
    end
    
    def subtract(a,b)
      a-b
    end
  end
  
  module InstanceMethods
    def multiply(a,b)
      a*b
    end
    
    def divide(a,b)
      a/b
    end
  end
  
end

class Arithmetic
  include ArithmeticHelpers
end

puts Arithmetic.add(1,4)
puts Arithmetic.new.multiply(9,9)

# END: Demostrate adding instance and singleton methods to a class
#############################################################################

#############################################################################
# BEGIN: Plugin Example
# the following demonstrates the pattern for a rails plugin
module Plugin

  # this get called when this module is included (e.g. include Plugin)
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def acts_as_pluggable
      include InstanceMethods # add instance methods to calling class
      extend SingletonMethods # add singleton methods to calling class
    end
  end
  
  module InstanceMethods
    def instance_method1
      puts "instance_method1 called"
    end
  end
  
  module SingletonMethods  
    def singleton_method1
      puts "singleton_method1 called"
    end
  end
  
end

# create an application Base class
class App; class Base; end; end

# add the plugin to the application Base class
App::Base.send(:include, Plugin)

# create our own application class
class MyApp < App::Base
  # use the plugin
  acts_as_pluggable
end
# END: Plugin Example
#############################################################################

#############################################################################
# BEGIN: 
module Module1
  
  MY_CONSTANT = "hello"
  
  def instance_method1
    puts "#{self} called foo"
  end
  
  def self.singleton_method1
    puts "#{self} called foo"
  end
  
  # dynamically define and instance methods (send is used because define_method is private)
  self.send(:define_method, :instance_method2) { puts "#{self} called instance_method2" }
  
end

puts Module1.constants
puts Module1.instance_methods
puts Module1.singleton_methods
# END:
#############################################################################

#############################################################################
# BEGIN:
module A  
  def foo
    puts "#{self.class} called foo"
  end
end

module B; end

# make foo an instance method of String
class String; include A; end
"hello".foo

# make foo a class method of string
String.extend(A)
String.foo

# include A's methods in B (mixin)
B.send(:include, A)
class D; include B; end
D.extend(B)
D.new.foo
D.foo
# END:
#############################################################################

#----------------------------------------------------------------------------
pp Object.methods
pp Object.singleton_methods
pp Object.instance_methods

puts Object.new.respond_to?(:inspect)
puts Fixnum.method_defined?(:induced_from)

#----------------------------------------------------------------------------
# define a blank class as a holder for some methods
class BigMeanGiant
end

# Now add some silly-ish methods, using a flavor of eval.
# They're going to be instance methods, because it's as if
# we defined them inline inside the class definition above.
# When invoked, the giant yells the name of the method.

%w(fee fi fo fum).each do |name|
  BigMeanGiant.class_eval <<-EOS
    def #{name}() 
      puts 'Giant says:  #{name.upcase}!'
    end
  EOS
end

# invoke the methods, just for fun

  g = BigMeanGiant.new
  g.fee
  g.fi
  g.fo
  g.fum

#----------------------------------------------------------------------------
class RubyBean

  def initialize
    @listeners = []
  end

  def register_listener(l)
    @listeners.push(l) unless @listeners.include?(l)
  end

  def unregister_listener(l)
    @listeners.delete(l)
  end
  
  def self.property(*properties)
    properties.each { |property|
      class_eval(%Q[
        @@#{property}_count = 0
  
        def #{property}
          @#{property}
        end
  
        def #{property}=(value)
          oldValue = @#{property}
          return if (value == oldValue)
          @listeners.each { |listener|
            listener.propertyChanged(:#{property},
                                     oldValue,
                                     value)
          }
          @#{property} = value
          @@#{property}_count += 1
        end
  
        def self.#{property}_count
          @@#{property}_count
        end
      ])
    }
  end
end

class TestBean < RubyBean
  property :name, :firstname
end

class LoggingPropertyChangeListener
  def propertyChanged(property, oldValue, newValue)
    print property, " changed from ",
      oldValue, " to ",
      newValue, "n"
  end
end

test = TestBean.new
listener = LoggingPropertyChangeListener.new
test.register_listener(listener)
test.name = "Parker"
test.firstname = "Charlie"
test.firstname = "Maceo"
puts TestBean.name_count # static class method
puts TestBean.firstname_count # static class method
test.unregister_listener(listener)

#----------------------------------------------------------------------------
module BinaryTreeHelper
  private
  def add_or_create_node(field, value)
    if instance_variable_get(field).nil?
      instance_variable_set(field,
                            BinaryTreeNode.new(value))
    else
      instance_variable_get(field).add(value)
    end
  end
end

class BinaryTree
  include BinaryTreeHelper

  def add(value)
    add_or_create_node(:@root, value)
  end
end

class BinaryTreeNode
  include BinaryTreeHelper

  def initialize(value)
    @value = value
  end

  def add(value)
    add_or_create_node(value < @value ? :@left : :@right,
                       value)
  end
end

#----------------------------------------------------------------------------
require 'metaid' # gem
 
class Person

  def initialize
  end
  
  def class_name
    self.class.to_s
  end
  
  meta_def(:default_name) { "John Smith" } # add class method, MailTruck.cool
  class_def(:age) { 22 } # add instance method, MailTruck.new.qwerty  
    
end

puts Person.new.class_name
puts Person.default_name
puts Person.new.age





