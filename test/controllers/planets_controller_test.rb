require "test_helper"

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planet = planets(:mars)
  end

  test "should get index" do
    get planets_url(@index)
    assert_response :success
    assert_not_nil (@planet)
  end

  test "should get new" do
    get new_planet_url
    assert_response :success
  end

  test "should create planet" do
    assert_difference('Planet.count') do
      # post planets_url, params: { planet: { details: @planet.details, diameter: @planet.diameter, facts: @planet.facts, image_url: @planet.image_url, mass: @planet.mass, name:'Jupiter' } }
      @planet.name = 'Jupiter'
      post planets_url, params: { planet: @planet.attributes  }
    
    end

    assert_redirected_to planet_url(Planet.last)
  end

  test "should show planet" do
    get planet_url(@planet)
    assert_response :success
    assert_not_nil (@planet)
   end

  test "should get edit" do
    get edit_planet_url(@planet)
    assert_response :success
  end

  test "should update planet" do
    # patch planet_url(@planet), params: { planet: { details: @planet.details, diameter: @planet.diameter, facts: @planet.facts, image_url: @planet.image_url, mass: @planet.mass, name: @planet.name } }
    patch planet_url(@planet), params: { planet: @planet.attributes }
    assert_redirected_to planet_url(@planet)
  end

  test "should destroy planet" do
    assert_difference('Planet.count', -1) do
      delete planet_url(@planet)
    end

    assert_redirected_to planets_url
  end
end
