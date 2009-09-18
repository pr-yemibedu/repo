require File.dirname(__FILE__) + '/../test_helper'

class RecipeTest < Test::Unit::TestCase
  fixtures :recipes

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Recipe, recipes(:first)
  end
end
