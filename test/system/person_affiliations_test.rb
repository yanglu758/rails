require "application_system_test_case"

class PersonAffiliationsTest < ApplicationSystemTestCase
  setup do
    @person_affiliation = person_affiliations(:one)
  end

  test "visiting the index" do
    visit person_affiliations_url
    assert_selector "h1", text: "Person Affiliations"
  end

  test "creating a Person affiliation" do
    visit person_affiliations_url
    click_on "New Person Affiliation"

    fill_in "Affiliation", with: @person_affiliation.affiliation_id
    fill_in "Person", with: @person_affiliation.person_id
    click_on "Create Person affiliation"

    assert_text "Person affiliation was successfully created"
    click_on "Back"
  end

  test "updating a Person affiliation" do
    visit person_affiliations_url
    click_on "Edit", match: :first

    fill_in "Affiliation", with: @person_affiliation.affiliation_id
    fill_in "Person", with: @person_affiliation.person_id
    click_on "Update Person affiliation"

    assert_text "Person affiliation was successfully updated"
    click_on "Back"
  end

  test "destroying a Person affiliation" do
    visit person_affiliations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person affiliation was successfully destroyed"
  end
end
