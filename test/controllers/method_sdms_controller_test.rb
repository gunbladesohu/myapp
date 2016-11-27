require 'test_helper'

class MethodSdmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @method_sdm = method_sdms(:one)
  end

  test "should get index" do
    get method_sdms_url
    assert_response :success
  end

  test "should get new" do
    get new_method_sdm_url
    assert_response :success
  end

  test "should create method_sdm" do
    assert_difference('MethodSdm.count') do
      post method_sdms_url, params: { method_sdm: { description: @method_sdm.description, insertTime: @method_sdm.insertTime, name: @method_sdm.name } }
    end

    assert_redirected_to method_sdm_url(MethodSdm.last)
  end

  test "should show method_sdm" do
    get method_sdm_url(@method_sdm)
    assert_response :success
  end

  test "should get edit" do
    get edit_method_sdm_url(@method_sdm)
    assert_response :success
  end

  test "should update method_sdm" do
    patch method_sdm_url(@method_sdm), params: { method_sdm: { description: @method_sdm.description, insertTime: @method_sdm.insertTime, name: @method_sdm.name } }
    assert_redirected_to method_sdm_url(@method_sdm)
  end

  test "should destroy method_sdm" do
    assert_difference('MethodSdm.count', -1) do
      delete method_sdm_url(@method_sdm)
    end

    assert_redirected_to method_sdms_url
  end
end
