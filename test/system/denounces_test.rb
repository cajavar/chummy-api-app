require "application_system_test_case"

class DenouncesTest < ApplicationSystemTestCase
  setup do
    @denounce = denounces(:one)
  end

  test "visiting the index" do
    visit denounces_url
    assert_selector "h1", text: "Denounces"
  end

  test "creating a Denounce" do
    visit denounces_url
    click_on "New Denounce"

    fill_in "Bot", with: @denounce.bot_id
    fill_in "Denounce Type", with: @denounce.denounce_type_id
    fill_in "Facts", with: @denounce.facts
    fill_in "Id", with: @denounce.id
    fill_in "Observations", with: @denounce.observations
    click_on "Create Denounce"

    assert_text "Denounce was successfully created"
    click_on "Back"
  end

  test "updating a Denounce" do
    visit denounces_url
    click_on "Edit", match: :first

    fill_in "Bot", with: @denounce.bot_id
    fill_in "Denounce Type", with: @denounce.denounce_type_id
    fill_in "Facts", with: @denounce.facts
    fill_in "Id", with: @denounce.id
    fill_in "Observations", with: @denounce.observations
    click_on "Update Denounce"

    assert_text "Denounce was successfully updated"
    click_on "Back"
  end

  test "destroying a Denounce" do
    visit denounces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Denounce was successfully destroyed"
  end
end
