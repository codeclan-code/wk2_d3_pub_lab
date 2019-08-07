require("minitest/autorun")
require("minitest/pride")
require_relative('../customer')

class CustomerTest < MiniTest::Test

def setup
  @customer1 = Customer.new("Ted", 100)
end


def test_customer_name
  assert_equal("Ted", @customer1.name())
end


def test_customer_wallet
  assert_equal(100, @customer1.wallet())
end







end
