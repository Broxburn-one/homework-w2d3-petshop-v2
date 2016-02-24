class Customer

  attr_reader :name, :wallet, :basket

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @basket = []
  end

  def add_pet_to_basket(pet)
    @basket<<pet
  end

end