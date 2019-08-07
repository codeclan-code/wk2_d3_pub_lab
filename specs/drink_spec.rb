require("minitest/autorun")
require("minitest/pride")
require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("drink1", 1.50)
    @drink2 = Drink.new("drink2", 2.50)
    @drink3 = Drink.new("drink3", 5.0)
  end

  def test_name_of_drink
    assert_equal("drink1", @drink1.name())
  end


  def test_price_of_drink
    assert_equal(1.50, @drink1.price())
  end

end
