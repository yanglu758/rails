require "application_system_test_case"

class PersonLocationsTest < ApplicationSystemTestCase
  setup do
    @person_location = person_locations(:one)
  end

  test "visiting the index" do
    visit person_locations_url
    assert_selector "h1", text: "Person Locations"
  end

  test "creating a Person location" do
    visit person_locations_url
    click_on "New Person Location"

    fill_in "Location", with: @person_location.location_id
    fill_in "Person", with: @person_location.person_id
    click_on "Create Person location"

    assert_text "Person location was successfully created"
    click_on "Back"
  end

  test "updating a Person location" do
    visit person_locations_url
    click_on "Edit", match: :first

    fill_in "Location", with: @person_location.location_id
    fill_in "Person", with: @person_location.person_id
    click_on "Update Person location"

    assert_text "Person location was successfully updated"
    click_on "Back"
  end

  test "destroying a Person location" do
    visit person_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person location was successfully destroyed"
  end
end
