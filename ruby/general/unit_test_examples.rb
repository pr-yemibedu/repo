require 'test/unit'

class Person
  attr_reader :first_name
  attr_reader :last_name
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
  
end

class PersonTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end
      
  def test_initialize
    person = Person.new("Brian", "Pfeil")
    assert_equal("Pfeil", person.last_name)
  end
end