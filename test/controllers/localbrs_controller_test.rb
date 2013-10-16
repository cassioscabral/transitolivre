require 'test_helper'

class LocalbrsControllerTest < ActionController::TestCase
  setup do
    @localbr = localbrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:localbrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create localbr" do
    assert_difference('Localbr.count') do
      post :create, localbr: { lbratualiza: @localbr.lbratualiza, lbrbr: @localbr.lbrbr, lbrid: @localbr.lbrid, lbrkm: @localbr.lbrkm, lbrlatitude: @localbr.lbrlatitude, lbrlatitude: @localbr.lbrlatitude, lbrpnvid: @localbr.lbrpnvid, lbruf: @localbr.lbruf }
    end

    assert_redirected_to localbr_path(assigns(:localbr))
  end

  test "should show localbr" do
    get :show, id: @localbr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @localbr
    assert_response :success
  end

  test "should update localbr" do
    patch :update, id: @localbr, localbr: { lbratualiza: @localbr.lbratualiza, lbrbr: @localbr.lbrbr, lbrid: @localbr.lbrid, lbrkm: @localbr.lbrkm, lbrlatitude: @localbr.lbrlatitude, lbrlatitude: @localbr.lbrlatitude, lbrpnvid: @localbr.lbrpnvid, lbruf: @localbr.lbruf }
    assert_redirected_to localbr_path(assigns(:localbr))
  end

  test "should destroy localbr" do
    assert_difference('Localbr.count', -1) do
      delete :destroy, id: @localbr
    end

    assert_redirected_to localbrs_path
  end
end
