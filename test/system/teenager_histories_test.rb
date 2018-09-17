require "application_system_test_case"

class TeenagerHistoriesTest < ApplicationSystemTestCase
  setup do
    @teenager_history = teenager_histories(:one)
  end

  test "visiting the index" do
    visit teenager_histories_url
    assert_selector "h1", text: "Teenager Histories"
  end

  test "creating a Teenager history" do
    visit teenager_histories_url
    click_on "New Teenager History"

    fill_in "Id", with: @teenager_history.id
    fill_in "Registry Date", with: @teenager_history.registry_date
    fill_in "Token", with: @teenager_history.token
    click_on "Create Teenager history"

    assert_text "Teenager history was successfully created"
    click_on "Back"
  end

  test "updating a Teenager history" do
    visit teenager_histories_url
    click_on "Edit", match: :first

    fill_in "Id", with: @teenager_history.id
    fill_in "Registry Date", with: @teenager_history.registry_date
    fill_in "Token", with: @teenager_history.token
    click_on "Update Teenager history"

    assert_text "Teenager history was successfully updated"
    click_on "Back"
  end

  test "destroying a Teenager history" do
    visit teenager_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teenager history was successfully destroyed"
  end
end
