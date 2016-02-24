class Customer

  attr_reader :name, :wallet, :basket

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @basket = []
  end

  

end