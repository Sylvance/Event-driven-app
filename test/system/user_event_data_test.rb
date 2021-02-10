require "application_system_test_case"

class UserEventsTest < ApplicationSystemTestCase
  setup do
    @user_event = user_events(:one)
  end

  test "visiting the index" do
    visit user_events_url
    assert_selector "h1", text: "User Event Data"
  end

  test "creating a User event datum" do
    visit user_events_url
    click_on "New User Event Datum"

    fill_in "Type", with: @user_event.type
    fill_in "User", with: @user_event.user_id
    fill_in "Value", with: @user_event.value
    click_on "Create User event datum"

    assert_text "User event datum was successfully created"
    click_on "Back"
  end

  test "updating a User event datum" do
    visit user_events_url
    click_on "Edit", match: :first

    fill_in "Type", with: @user_event.type
    fill_in "User", with: @user_event.user_id
    fill_in "Value", with: @user_event.value
    click_on "Update User event datum"

    assert_text "User event datum was successfully updated"
    click_on "Back"
  end

  test "destroying a User event datum" do
    visit user_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User event datum was successfully destroyed"
  end
end
