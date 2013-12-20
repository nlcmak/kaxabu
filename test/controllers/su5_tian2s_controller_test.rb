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
      post :create, su5_tian2: { bok8_lok8_id: @su5_tian2.bok8_lok8_id, kau3_tsai5_piau1_ki3: @su5_tian2.kau3_tsai5_piau1_ki3, phuan1_ing2_lik8_piau1_ki3: @su5_tian2.phuan1_ing2_lik8_piau1_ki3, su5_tian2_pian1_ho7: @su5_tian2.su5_tian2_pian1_ho7, tai5_gi2: @su5_tian2.tai5_gi2, tiong1_bun5: @su5_tian2.tiong1_bun5, tsham1_kho2: @su5_tian2.tsham1_kho2, tshut4_tshu3: @su5_tian2.tshut4_tshu3 }
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
    patch :update, id: @su5_tian2, su5_tian2: { bok8_lok8_id: @su5_tian2.bok8_lok8_id, kau3_tsai5_piau1_ki3: @su5_tian2.kau3_tsai5_piau1_ki3, phuan1_ing2_lik8_piau1_ki3: @su5_tian2.phuan1_ing2_lik8_piau1_ki3, su5_tian2_pian1_ho7: @su5_tian2.su5_tian2_pian1_ho7, tai5_gi2: @su5_tian2.tai5_gi2, tiong1_bun5: @su5_tian2.tiong1_bun5, tsham1_kho2: @su5_tian2.tsham1_kho2, tshut4_tshu3: @su5_tian2.tshut4_tshu3 }
    assert_redirected_to su5_tian2_path(assigns(:su5_tian2))
  end

  test "should destroy su5_tian2" do
    assert_difference('Su5Tian2.count', -1) do
      delete :destroy, id: @su5_tian2
    end

    assert_redirected_to su5_tian2s_path
  end
end
