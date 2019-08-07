class Pub

  attr_reader :name, :drinks
  attr_accessor :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks

  end

  def reduce_drinks()
    return @drinks.pop
  end

  def increase_value_of_till(drink)
    @till += drink.price
  end

  def checks_customer_over_18(customer)
    return true if customer.age >= 18
    return false if customer.age < 18
  end

end
