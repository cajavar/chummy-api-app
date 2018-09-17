require 'test_helper'

class PsychologistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psychologist = psychologists(:one)
  end

  test "should get index" do
    get psychologists_url
    assert_response :success
  end

  test "should get new" do
    get new_psychologist_url
    assert_response :success
  end

  test "should create psychologist" do
    assert_difference('Psychologist.count') do
      post psychologists_url, params: { psychologist: { address: @psychologist.address, cv: @psychologist.cv, email: @psychologist.email, id: @psychologist.id, id_facebook: @psychologist.id_facebook, identification: @psychologist.identification, location: @psychologist.location, name: @psychologist.name, telephone: @psychologist.telephone } }
    end

    assert_redirected_to psychologist_url(Psychologist.last)
  end

  test "should show psychologist" do
    get psychologist_url(@psychologist)
    assert_response :success
  end

  test "should get edit" do
    get edit_psychologist_url(@psychologist)
    assert_response :success
  end

  test "should update psychologist" do
    patch psychologist_url(@psychologist), params: { psychologist: { address: @psychologist.address, cv: @psychologist.cv, email: @psychologist.email, id: @psychologist.id, id_facebook: @psychologist.id_facebook, identification: @psychologist.identification, location: @psychologist.location, name: @psychologist.name, telephone: @psychologist.telephone } }
    assert_redirected_to psychologist_url(@psychologist)
  end

  test "should destroy psychologist" do
    assert_difference('Psychologist.count', -1) do
      delete psychologist_url(@psychologist)
    end

    assert_redirected_to psychologists_url
  end
end
