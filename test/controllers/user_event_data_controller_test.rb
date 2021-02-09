require "test_helper"

class UserEventDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_event_datum = user_event_data(:one)
  end

  test "should get index" do
    get user_event_data_url
    assert_response :success
  end

  test "should get new" do
    get new_user_event_datum_url
    assert_response :success
  end

  test "should create user_event_datum" do
    assert_difference('UserEventDatum.count') do
      post user_event_data_url, params: { user_event_datum: { type: @user_event_datum.type, user_id: @user_event_datum.user_id, value: @user_event_datum.value } }
    end

    assert_redirected_to user_event_datum_url(UserEventDatum.last)
  end

  test "should show user_event_datum" do
    get user_event_datum_url(@user_event_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_event_datum_url(@user_event_datum)
    assert_response :success
  end

  test "should update user_event_datum" do
    patch user_event_datum_url(@user_event_datum), params: { user_event_datum: { type: @user_event_datum.type, user_id: @user_event_datum.user_id, value: @user_event_datum.value } }
    assert_redirected_to user_event_datum_url(@user_event_datum)
  end

  test "should destroy user_event_datum" do
    assert_difference('UserEventDatum.count', -1) do
      delete user_event_datum_url(@user_event_datum)
    end

    assert_redirected_to user_event_data_url
  end
end
