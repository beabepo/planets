require "application_system_test_case"

class PlanetsTest < ApplicationSystemTestCase
  setup do
    @planet = planets(:one)
  end

  test "visiting the index" do
    visit planets_url
    assert_selector "h1", text: "Planets"
  end

  test "creating a Planet" do
    visit planets_url
    click_on "New Planet"

    fill_in "Details", with: @planet.details
    fill_in "Diameter", with: @planet.diameter
    fill_in "Facts", with: @planet.facts
    fill_in "Image url", with: @planet.image_url
    fill_in "Mass", with: @planet.mass
    fill_in "Name", with: @planet.name
    click_on "Create Planet"

    assert_text "Planet was successfully created"
    click_on "Back"
  end

  test "updating a Planet" do
    visit planets_url
    click_on "Edit", match: :first

    fill_in "Details", with: @planet.details
    fill_in "Diameter", with: @planet.diameter
    fill_in "Facts", with: @planet.facts
    fill_in "Image url", with: @planet.image_url
    fill_in "Mass", with: @planet.mass
    fill_in "Name", with: @planet.name
    click_on "Update Planet"

    assert_text "Planet was successfully updated"
    click_on "Back"
  end

  test "destroying a Planet" do
    visit planets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planet was successfully destroyed"
  end
end
