require('minitest/autorun')
require_relative('../customer')
require_relative('../shop')

class TestPets < MiniTest::Test

  def setup
    @customer_1 = Customer.new("Anne", 300)
    @customer_2 = Customer.new("John", 3000)
    @customer_3 = Customer.new("Simon", 80)

    @customers = [@customer_1, @customer_2, @customer_3]

    @shop = Shop.new( @stock )
  end

  def test_wallet_has_money
    assert_equal(300, @customer_1.wallet)
  end

end