require "application_system_test_case"

class DenounceTypesTest < ApplicationSystemTestCase
  setup do
    @denounce_type = denounce_types(:one)
  end

  test "visiting the index" do
    visit denounce_types_url
    assert_selector "h1", text: "Denounce Types"
  end

  test "creating a Denounce type" do
    visit denounce_types_url
    click_on "New Denounce Type"

    fill_in "Id", with: @denounce_type.id
    fill_in "Title", with: @denounce_type.title
    click_on "Create Denounce type"

    assert_text "Denounce type was successfully created"
    click_on "Back"
  end

  test "updating a Denounce type" do
    visit denounce_types_url
    click_on "Edit", match: :first

    fill_in "Id", with: @denounce_type.id
    fill_in "Title", with: @denounce_type.title
    click_on "Update Denounce type"

    assert_text "Denounce type was successfully updated"
    click_on "Back"
  end

  test "destroying a Denounce type" do
    visit denounce_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Denounce type was successfully destroyed"
  end
end
