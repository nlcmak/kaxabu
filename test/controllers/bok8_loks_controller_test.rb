require 'test_helper'

class Bok8LoksControllerTest < ActionController::TestCase
  setup do
    @bok8_lok = bok8_loks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bok8_loks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bok8_lok" do
    assert_difference('Bok8Lok.count') do
      post :create, bok8_lok: { lui7: @bok8_lok.lui7, pian1_ho7: @bok8_lok.pian1_ho7, pinn1_mia5: @bok8_lok.pinn1_mia5 }
    end

    assert_redirected_to bok8_lok_path(assigns(:bok8_lok))
  end

  test "should show bok8_lok" do
    get :show, id: @bok8_lok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bok8_lok
    assert_response :success
  end

  test "should update bok8_lok" do
    patch :update, id: @bok8_lok, bok8_lok: { lui7: @bok8_lok.lui7, pian1_ho7: @bok8_lok.pian1_ho7, pinn1_mia5: @bok8_lok.pinn1_mia5 }
    assert_redirected_to bok8_lok_path(assigns(:bok8_lok))
  end

  test "should destroy bok8_lok" do
    assert_difference('Bok8Lok.count', -1) do
      delete :destroy, id: @bok8_lok
    end

    assert_redirected_to bok8_loks_path
  end
end
