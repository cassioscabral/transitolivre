require 'test_helper'

class TiporeceptoresControllerTest < ActionController::TestCase
  setup do
    @tiporeceptor = tiporeceptores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiporeceptores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiporeceptor" do
    assert_difference('Tiporeceptor.count') do
      post :create, tiporeceptor: { ttratualiza: @tiporeceptor.ttratualiza, ttrcodigo: @tiporeceptor.ttrcodigo, ttrdelegacia: @tiporeceptor.ttrdelegacia, ttrdescricao: @tiporeceptor.ttrdescricao }
    end

    assert_redirected_to tiporeceptor_path(assigns(:tiporeceptor))
  end

  test "should show tiporeceptor" do
    get :show, id: @tiporeceptor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiporeceptor
    assert_response :success
  end

  test "should update tiporeceptor" do
    patch :update, id: @tiporeceptor, tiporeceptor: { ttratualiza: @tiporeceptor.ttratualiza, ttrcodigo: @tiporeceptor.ttrcodigo, ttrdelegacia: @tiporeceptor.ttrdelegacia, ttrdescricao: @tiporeceptor.ttrdescricao }
    assert_redirected_to tiporeceptor_path(assigns(:tiporeceptor))
  end

  test "should destroy tiporeceptor" do
    assert_difference('Tiporeceptor.count', -1) do
      delete :destroy, id: @tiporeceptor
    end

    assert_redirected_to tiporeceptores_path
  end
end
