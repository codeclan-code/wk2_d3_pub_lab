require("minitest/autorun")
require("minitest/pride")
require_relative('../pub')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("drink1", 1.50)
    @drink2 = Drink.new("drink2", 2.50)
    @drink3 = Drink.new("drink3", 5.0)

    @pub1 = Pub.new("Jolly Farmer", 1000, [@drink1, @drink2, @drink3])
  end

  def test_name_of_pub
    assert_equal("Jolly Farmer", @pub1.name())
  end

  def test_value_of_till
    assert_equal(1000, @pub1.till())
  end

  def test_drinks_in_pub #Drinks for sale
    expected = [@drink1, @drink2, @drink3]
    assert_equal(expected, @pub1.drinks())
  end

end
