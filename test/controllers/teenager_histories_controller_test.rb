require 'test_helper'

class TeenagerHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teenager_history = teenager_histories(:one)
  end

  test "should get index" do
    get teenager_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_teenager_history_url
    assert_response :success
  end

  test "should create teenager_history" do
    assert_difference('TeenagerHistory.count') do
      post teenager_histories_url, params: { teenager_history: { id: @teenager_history.id, registry_date: @teenager_history.registry_date, token: @teenager_history.token } }
    end

    assert_redirected_to teenager_history_url(TeenagerHistory.last)
  end

  test "should show teenager_history" do
    get teenager_history_url(@teenager_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_teenager_history_url(@teenager_history)
    assert_response :success
  end

  test "should update teenager_history" do
    patch teenager_history_url(@teenager_history), params: { teenager_history: { id: @teenager_history.id, registry_date: @teenager_history.registry_date, token: @teenager_history.token } }
    assert_redirected_to teenager_history_url(@teenager_history)
  end

  test "should destroy teenager_history" do
    assert_difference('TeenagerHistory.count', -1) do
      delete teenager_history_url(@teenager_history)
    end

    assert_redirected_to teenager_histories_url
  end
end
