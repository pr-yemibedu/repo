$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'rubysiebel'

class TestBasics < Test::Unit::TestCase
  
  def test_random
    assert( RubySiebel::MobileWebClient.instance_methods.include?("kill") )
  end
  
end
