require 'test_helper'

class Bok8Lok8sControllerTest < ActionController::TestCase
  setup do
    @bok8_lok8 = bok8_lok8s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bok8_lok8s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bok8_lok8" do
    assert_difference('Bok8Lok8.count') do
      post :create, bok8_lok8: { 篇名: @bok8_lok8.篇名, 編號: @bok8_lok8.編號, 類名: @bok8_lok8.類名 }
    end

    assert_redirected_to bok8_lok8_path(assigns(:bok8_lok8))
  end

  test "should show bok8_lok8" do
    get :show, id: @bok8_lok8
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bok8_lok8
    assert_response :success
  end

  test "should update bok8_lok8" do
    patch :update, id: @bok8_lok8, bok8_lok8: { 篇名: @bok8_lok8.篇名, 編號: @bok8_lok8.編號, 類名: @bok8_lok8.類名 }
    assert_redirected_to bok8_lok8_path(assigns(:bok8_lok8))
  end

  test "should destroy bok8_lok8" do
    assert_difference('Bok8Lok8.count', -1) do
      delete :destroy, id: @bok8_lok8
    end

    assert_redirected_to bok8_lok8s_path
  end
end
