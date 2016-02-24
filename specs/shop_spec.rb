require('minitest/autorun')
require_relative('../shop')
require_relative('../pets')
require_relative('../customer')

class TestShop < MiniTest::Test
  def setup
    @lion = Pets.new('Lion', 500)
    @tiger = Pets.new('Tiger', 600)
    @zebra = Pets.new('Zebra', 100)
    @monkey = Pets.new('Monkey', 200)

    @stock = [@lion, @tiger, @zebra, @monkey]
    @shop = Shop.new( @stock )

    @customer_1 = Customer.new("Anne", 300)
    @customer_2 = Customer.new("John", 3000)
    @customer_3 = Customer.new("Simon", 80)

    @customers = [@customer_1, @customer_2, @customer_3]
  end

  def test_shop_stock_size
    assert_equal(4, @shop.stock.size)
  end

  def test_till_has_funds
    assert_equal(100, @shop.till)
  end
  
  def test_counts_items_in_basket
    assert_equal(0,@customer_2.basket.size)
  end

 
  # customer buys pet, this will have 3 tests beneath it
  def test_basket_has_pet
    @shop.add_item_to_basket(@customer_2,@stock[0].species)
    assert_equal(1, @customer_2.basket.size)
    # assert_equal("Lion", @customer_2.basket.first)
  end
end