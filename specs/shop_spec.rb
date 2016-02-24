require('minitest/autorun')
require_relative('../shop')
require_relative('../pets')

class TestShop < MiniTest::Test
  def setup
    @lion = Pets.new('Lion', 500)
    @tiger = Pets.new('Tiger', 600)
    @zebra = Pets.new('Zebra', 100)
    @monkey = Pets.new('Monkey', 200)

    @stock = [@lion, @tiger, @zebra, @monkey]
    @shop = Shop.new( @stock )
  end

  def test_shop_stock_size
    assert_equal(4, @shop.stock.size)
  end

  def test_till_has_funds
    assert_equal(100, @shop.till)
  end

end