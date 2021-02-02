require "test_helper"

class PersonAffiliationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_affiliation = person_affiliations(:one)
  end

  test "should get index" do
    get person_affiliations_url
    assert_response :success
  end

  test "should get new" do
    get new_person_affiliation_url
    assert_response :success
  end

  test "should create person_affiliation" do
    assert_difference('PersonAffiliation.count') do
      post person_affiliations_url, params: { person_affiliation: { affiliation_id: @person_affiliation.affiliation_id, person_id: @person_affiliation.person_id } }
    end

    assert_redirected_to person_affiliation_url(PersonAffiliation.last)
  end

  test "should show person_affiliation" do
    get person_affiliation_url(@person_affiliation)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_affiliation_url(@person_affiliation)
    assert_response :success
  end

  test "should update person_affiliation" do
    patch person_affiliation_url(@person_affiliation), params: { person_affiliation: { affiliation_id: @person_affiliation.affiliation_id, person_id: @person_affiliation.person_id } }
    assert_redirected_to person_affiliation_url(@person_affiliation)
  end

  test "should destroy person_affiliation" do
    assert_difference('PersonAffiliation.count', -1) do
      delete person_affiliation_url(@person_affiliation)
    end

    assert_redirected_to person_affiliations_url
  end
end
