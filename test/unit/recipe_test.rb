require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def test_recipe_should_have_votes
    assert_equal 2, recipes(:chip_butty).votes.size
  end
end
