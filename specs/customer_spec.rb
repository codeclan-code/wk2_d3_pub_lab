require("minitest/autorun")
require("minitest/pride")
require_relative('../customer')
require_relative('../drink')
require_relative('../pub')

class CustomerTest < MiniTest::Test

def setup
  @drink1 = Drink.new("drink1", 1.50)
  @drink2 = Drink.new("drink2", 2.50)
  @drink3 = Drink.new("drink3", 5)

  @pub1 = Pub.new("Jolly Farmer", 1000, [@drink1, @drink2, @drink3])

  @customer1 = Customer.new("Ted", 100)
end


def test_customer_name
  assert_equal("Ted", @customer1.name())
end


def test_customer_wallet
  assert_equal(100, @customer1.wallet())
end


def test_buy_drink_from_pub
  @customer1.buy_drink_from_pub(@pub1)
  assert_equal([@drink1, @drink2], @pub1.drinks())
end

def test_reduce_value_of_wallet
  @customer1.reduce_value_of_wallet(@drink3.price)
  assert_equal(95, @customer1.wallet())
end

end
