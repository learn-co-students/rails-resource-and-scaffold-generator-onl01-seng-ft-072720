require 'test_helper'

class AtriclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atricle = atricles(:one)
  end

  test "should get index" do
    get atricles_url
    assert_response :success
  end

  test "should get new" do
    get new_atricle_url
    assert_response :success
  end

  test "should create atricle" do
    assert_difference('Atricle.count') do
      post atricles_url, params: { atricle: { body: @atricle.body, title: @atricle.title } }
    end

    assert_redirected_to atricle_url(Atricle.last)
  end

  test "should show atricle" do
    get atricle_url(@atricle)
    assert_response :success
  end

  test "should get edit" do
    get edit_atricle_url(@atricle)
    assert_response :success
  end

  test "should update atricle" do
    patch atricle_url(@atricle), params: { atricle: { body: @atricle.body, title: @atricle.title } }
    assert_redirected_to atricle_url(@atricle)
  end

  test "should destroy atricle" do
    assert_difference('Atricle.count', -1) do
      delete atricle_url(@atricle)
    end

    assert_redirected_to atricles_url
  end
end
