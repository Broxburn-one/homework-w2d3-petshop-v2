class Customer

  attr_reader :name, :wallet, :basket

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @basket = []
  end

  def take_money_off(price)
    return @wallet -= price
  end
end