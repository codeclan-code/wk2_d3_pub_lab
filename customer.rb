class Customer

  attr_reader :name
  attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buy_drink_from_pub(pub)
    drink = pub.reduce_drinks()
  end

  def reduce_value_of_wallet(drink)
    @wallet -= drink.price
  end

end
