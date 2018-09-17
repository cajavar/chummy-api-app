require 'test_helper'

class DenounceTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denounce_type = denounce_types(:one)
  end

  test "should get index" do
    get denounce_types_url
    assert_response :success
  end

  test "should get new" do
    get new_denounce_type_url
    assert_response :success
  end

  test "should create denounce_type" do
    assert_difference('DenounceType.count') do
      post denounce_types_url, params: { denounce_type: { id: @denounce_type.id, title: @denounce_type.title } }
    end

    assert_redirected_to denounce_type_url(DenounceType.last)
  end

  test "should show denounce_type" do
    get denounce_type_url(@denounce_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_denounce_type_url(@denounce_type)
    assert_response :success
  end

  test "should update denounce_type" do
    patch denounce_type_url(@denounce_type), params: { denounce_type: { id: @denounce_type.id, title: @denounce_type.title } }
    assert_redirected_to denounce_type_url(@denounce_type)
  end

  test "should destroy denounce_type" do
    assert_difference('DenounceType.count', -1) do
      delete denounce_type_url(@denounce_type)
    end

    assert_redirected_to denounce_types_url
  end
end
