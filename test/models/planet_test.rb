require "test_helper"

class PlanetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test'planet must have a unique name' do
    planet = Planet.new(
      name: planets(:mars).name,
      diameter: 1,
      mass: 1
    )

    assert planet.invalid?
    assert_equal ["has already been taken"], planet.errors[:name]
  end  

  test'planets must have values for required attributes' do
    planet = Planet.new

    assert planet.invalid?
    assert planet.errors[:name].any?
    assert planet.errors[:diameter].any?
    assert planet.errors[:mass].any?
    assert_equal ["can't be blank"], planet.errors[:name]
    assert_equal ["can't be blank"], planet.errors[:diameter]
    assert_equal ["can't be blank"], planet.errors[:mass]
    assert !planet.save
  end  

  test'planets can be found in teh database' do
    planet_id = planets(:mars).id
    assert_nothing_raised { Planet.find(planet_id) }
  end 
  
  test'planets can be craeted' do
    planet = planets(:mars)
    planet.name = 'Jupiter'
    assert planet.save
  end  

  test'planets can be upated' do
    planet = planets(:mars)
    assert planet.update(name: 'Jupiter')
  end 

  test' planets can be deleted' do
    planet = planets(:mars)
    planet.destroy
    assert_raise(ActiveRecord::RecordNotFound) { Planet.find(planet.id) }
  end
end
