require 'test_helper'

class BotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bot = bots(:one)
  end

  test "should get index" do
    get bots_url
    assert_response :success
  end

  test "should get new" do
    get new_bot_url
    assert_response :success
  end

  test "should create bot" do
    assert_difference('Bot.count') do
      post bots_url, params: { bot: { end_date: @bot.end_date, id: @bot.id, start_date: @bot.start_date, teenager_id: @bot.teenager_id, token_face: @bot.token_face, token_id: @bot.token_id } }
    end

    assert_redirected_to bot_url(Bot.last)
  end

  test "should show bot" do
    get bot_url(@bot)
    assert_response :success
  end

  test "should get edit" do
    get edit_bot_url(@bot)
    assert_response :success
  end

  test "should update bot" do
    patch bot_url(@bot), params: { bot: { end_date: @bot.end_date, id: @bot.id, start_date: @bot.start_date, teenager_id: @bot.teenager_id, token_face: @bot.token_face, token_id: @bot.token_id } }
    assert_redirected_to bot_url(@bot)
  end

  test "should destroy bot" do
    assert_difference('Bot.count', -1) do
      delete bot_url(@bot)
    end

    assert_redirected_to bots_url
  end
end
