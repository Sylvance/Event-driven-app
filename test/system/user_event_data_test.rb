require "application_system_test_case"

class UserEventDataTest < ApplicationSystemTestCase
  setup do
    @user_event_datum = user_event_data(:one)
  end

  test "visiting the index" do
    visit user_event_data_url
    assert_selector "h1", text: "User Event Data"
  end

  test "creating a User event datum" do
    visit user_event_data_url
    click_on "New User Event Datum"

    fill_in "Type", with: @user_event_datum.type
    fill_in "User", with: @user_event_datum.user_id
    fill_in "Value", with: @user_event_datum.value
    click_on "Create User event datum"

    assert_text "User event datum was successfully created"
    click_on "Back"
  end

  test "updating a User event datum" do
    visit user_event_data_url
    click_on "Edit", match: :first

    fill_in "Type", with: @user_event_datum.type
    fill_in "User", with: @user_event_datum.user_id
    fill_in "Value", with: @user_event_datum.value
    click_on "Update User event datum"

    assert_text "User event datum was successfully updated"
    click_on "Back"
  end

  test "destroying a User event datum" do
    visit user_event_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User event datum was successfully destroyed"
  end
end
