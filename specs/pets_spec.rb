require('minitest/autorun')
require_relative('../pets')


class TestPets < MiniTest::Test
  def setup
    @antelope = Pets.new('Antelope', 50)
  end

  def test_pet_has_species
    assert_equal('Antelope', @antelope.species)
  end

  def test_pet_has_price
    assert_equal(50, @antelope.price)
  end
end