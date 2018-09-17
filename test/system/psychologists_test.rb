require "application_system_test_case"

class PsychologistsTest < ApplicationSystemTestCase
  setup do
    @psychologist = psychologists(:one)
  end

  test "visiting the index" do
    visit psychologists_url
    assert_selector "h1", text: "Psychologists"
  end

  test "creating a Psychologist" do
    visit psychologists_url
    click_on "New Psychologist"

    fill_in "Address", with: @psychologist.address
    fill_in "Cv", with: @psychologist.cv
    fill_in "Email", with: @psychologist.email
    fill_in "Id", with: @psychologist.id
    fill_in "Id Facebook", with: @psychologist.id_facebook
    fill_in "Identification", with: @psychologist.identification
    fill_in "Location", with: @psychologist.location
    fill_in "Name", with: @psychologist.name
    fill_in "Telephone", with: @psychologist.telephone
    click_on "Create Psychologist"

    assert_text "Psychologist was successfully created"
    click_on "Back"
  end

  test "updating a Psychologist" do
    visit psychologists_url
    click_on "Edit", match: :first

    fill_in "Address", with: @psychologist.address
    fill_in "Cv", with: @psychologist.cv
    fill_in "Email", with: @psychologist.email
    fill_in "Id", with: @psychologist.id
    fill_in "Id Facebook", with: @psychologist.id_facebook
    fill_in "Identification", with: @psychologist.identification
    fill_in "Location", with: @psychologist.location
    fill_in "Name", with: @psychologist.name
    fill_in "Telephone", with: @psychologist.telephone
    click_on "Update Psychologist"

    assert_text "Psychologist was successfully updated"
    click_on "Back"
  end

  test "destroying a Psychologist" do
    visit psychologists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Psychologist was successfully destroyed"
  end
end
