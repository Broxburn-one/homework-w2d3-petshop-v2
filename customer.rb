class Customer

  attr_reader :name, :wallet, :basket

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @basket = []
  end

  def take_money_off(pet)
    return  @customer.wallet - pet.price
  end
end