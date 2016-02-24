class Shop
  attr_reader :stock, :till
  
  def initialize(stock)
    @stock = stock
    @till = 100
  end


end