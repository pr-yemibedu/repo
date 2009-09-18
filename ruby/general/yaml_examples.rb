require 'yaml'

puts [1,2,'hello', 'world', {:name => 'john', :age => 18}].to_yaml

class Square
  def initialize width, height
    @width = width
    @height = height
    @bonus = ['yo', {:msg => 'YAML 4TW'}]
    @me = self
  end
end

puts Square.new(2, 2).to_yaml
