class Customer

  attr_reader :name, :age, :drunkenness_level
  attr_accessor :wallet

  def initialize(name, wallet, age, drunkenness_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness_level = drunkenness_level
  end

  def buy_drink_from_pub(pub)
    drink = pub.reduce_drinks()
  end

  def reduce_value_of_wallet(drink)
    #  binding.pry
    @wallet -= drink.price
  end

  def customer_gets_drunker_when_they_buy_drink(drink)
    @drunkenness_level += drink.alcohol_level
  end


end
