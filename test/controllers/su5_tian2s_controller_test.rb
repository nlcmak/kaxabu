require 'test_helper'

class Su5Tian2sControllerTest < ActionController::TestCase
  setup do
    @su5_tian2 = su5_tian2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:su5_tian2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create su5_tian2" do
    assert_difference('Su5Tian2.count') do
      post :create, su5_tian2: { bok8_lok8_id: @su5_tian2.bok8_lok8_id, 中文譯解: @su5_tian2.中文譯解, 出處: @su5_tian2.出處, 參考: @su5_tian2.參考, 臺語譯解: @su5_tian2.臺語譯解, 噶哈巫語教材標記法: @su5_tian2.噶哈巫語教材標記法, 噶哈巫語潘永歷標記法: @su5_tian2.噶哈巫語潘永歷標記法, 辭典編號: @su5_tian2.辭典編號 }
    end

    assert_redirected_to su5_tian2_path(assigns(:su5_tian2))
  end

  test "should show su5_tian2" do
    get :show, id: @su5_tian2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @su5_tian2
    assert_response :success
  end

  test "should update su5_tian2" do
    patch :update, id: @su5_tian2, su5_tian2: { bok8_lok8_id: @su5_tian2.bok8_lok8_id, 中文譯解: @su5_tian2.中文譯解, 出處: @su5_tian2.出處, 參考: @su5_tian2.參考, 臺語譯解: @su5_tian2.臺語譯解, 噶哈巫語教材標記法: @su5_tian2.噶哈巫語教材標記法, 噶哈巫語潘永歷標記法: @su5_tian2.噶哈巫語潘永歷標記法, 辭典編號: @su5_tian2.辭典編號 }
    assert_redirected_to su5_tian2_path(assigns(:su5_tian2))
  end

  test "should destroy su5_tian2" do
    assert_difference('Su5Tian2.count', -1) do
      delete :destroy, id: @su5_tian2
    end

    assert_redirected_to su5_tian2s_path
  end
end
