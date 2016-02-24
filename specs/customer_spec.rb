require('minitest/autorun')
require_relative('../customer')
require_relative('../shop')
require_relative("../pets")

class TestPets < MiniTest::Test

  def setup
    @customer_1 = Customer.new("Anne", 300)
    @customer_2 = Customer.new("John", 3000)
    @customer_3 = Customer.new("Simon", 80)

    @customers = [@customer_1, @customer_2, @customer_3]

    @lion = Pets.new('Lion', 500)
    @tiger = Pets.new('Tiger', 600)
    @zebra = Pets.new('Zebra', 100)
    @monkey = Pets.new('Monkey', 200)

    @stock =[@lion, @tiger, @zebra, @monkey]
    @shop = Shop.new( @stock )
  end

  def test_wallet_has_money
    assert_equal(300, @customer_1.wallet)
  end
  #customer buys pet, this will have 3 tests beneath it
  def test_basket_has_pet
    @customer_2.add_pet_to_basket(@shop.stock[0].species)
    assert_equal(1, @customer_2.basket.size)
    assert_equal("Lion", @customer_2.basket.first)
  end

end