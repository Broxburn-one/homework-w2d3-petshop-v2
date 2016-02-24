require('minitest/autorun')
require_relative('../pets')


class TestPets < MiniTest::Test
  def setup
    @pet1 = Pets.new('Antelope', 50)
  end

  def test_pet_has_species
    assert_equal('Antelope', @pet1.species)
  end

end