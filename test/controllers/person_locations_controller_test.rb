require "test_helper"

class PersonLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_location = person_locations(:one)
  end

  test "should get index" do
    get person_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_person_location_url
    assert_response :success
  end

  test "should create person_location" do
    assert_difference('PersonLocation.count') do
      post person_locations_url, params: { person_location: { location_id: @person_location.location_id, person_id: @person_location.person_id } }
    end

    assert_redirected_to person_location_url(PersonLocation.last)
  end

  test "should show person_location" do
    get person_location_url(@person_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_location_url(@person_location)
    assert_response :success
  end

  test "should update person_location" do
    patch person_location_url(@person_location), params: { person_location: { location_id: @person_location.location_id, person_id: @person_location.person_id } }
    assert_redirected_to person_location_url(@person_location)
  end

  test "should destroy person_location" do
    assert_difference('PersonLocation.count', -1) do
      delete person_location_url(@person_location)
    end

    assert_redirected_to person_locations_url
  end
end
