require "application_system_test_case"

class TeenagersTest < ApplicationSystemTestCase
  setup do
    @teenager = teenagers(:one)
  end

  test "visiting the index" do
    visit teenagers_url
    assert_selector "h1", text: "Teenagers"
  end

  test "creating a Teenager" do
    visit teenagers_url
    click_on "New Teenager"

    fill_in "Address", with: @teenager.address
    fill_in "Email", with: @teenager.email
    fill_in "Id", with: @teenager.id
    fill_in "Id Facebook", with: @teenager.id_facebook
    fill_in "Identification", with: @teenager.identification
    fill_in "Location", with: @teenager.location
    fill_in "Name", with: @teenager.name
    fill_in "Psychologist", with: @teenager.psychologist_id
    fill_in "Teenager History", with: @teenager.teenager_history_id
    fill_in "Telephone", with: @teenager.telephone
    click_on "Create Teenager"

    assert_text "Teenager was successfully created"
    click_on "Back"
  end

  test "updating a Teenager" do
    visit teenagers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @teenager.address
    fill_in "Email", with: @teenager.email
    fill_in "Id", with: @teenager.id
    fill_in "Id Facebook", with: @teenager.id_facebook
    fill_in "Identification", with: @teenager.identification
    fill_in "Location", with: @teenager.location
    fill_in "Name", with: @teenager.name
    fill_in "Psychologist", with: @teenager.psychologist_id
    fill_in "Teenager History", with: @teenager.teenager_history_id
    fill_in "Telephone", with: @teenager.telephone
    click_on "Update Teenager"

    assert_text "Teenager was successfully updated"
    click_on "Back"
  end

  test "destroying a Teenager" do
    visit teenagers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teenager was successfully destroyed"
  end
end
