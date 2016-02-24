require('minitest/autorun')
require_relative('../shop')
require_relative('../pets')

class TestShop < MiniTest::Test
  def setup
    @pet2 = Pets.new('Lion', 500)
    @pet3 = Pets.new('Tiger', 600)
    @pet4 = Pets.new('Zebra', 100)
    @pet5 = Pets.new('Monkey', 200)

    @stock = [@pet2, @pet3, @pet4, @pet5]
    @shop = Shop.new( @stock )
  end

  def test_shop_stock_size
    assert_equal(4, @shop.stock.size)
  end

  def test_till_has_funds
    assert_equal(100, @shop.till)
  end

end