require 'test_helper'

class TipoveiculosControllerTest < ActionController::TestCase
  setup do
    @tipoveiculo = tipoveiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoveiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoveiculo" do
    assert_difference('Tipoveiculo.count') do
      post :create, tipoveiculo: { tvvativo: @tipoveiculo.tvvativo, tvvatualiza: @tipoveiculo.tvvatualiza, tvvcodigo: @tipoveiculo.tvvcodigo }
    end

    assert_redirected_to tipoveiculo_path(assigns(:tipoveiculo))
  end

  test "should show tipoveiculo" do
    get :show, id: @tipoveiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoveiculo
    assert_response :success
  end

  test "should update tipoveiculo" do
    patch :update, id: @tipoveiculo, tipoveiculo: { tvvativo: @tipoveiculo.tvvativo, tvvatualiza: @tipoveiculo.tvvatualiza, tvvcodigo: @tipoveiculo.tvvcodigo }
    assert_redirected_to tipoveiculo_path(assigns(:tipoveiculo))
  end

  test "should destroy tipoveiculo" do
    assert_difference('Tipoveiculo.count', -1) do
      delete :destroy, id: @tipoveiculo
    end

    assert_redirected_to tipoveiculos_path
  end
end
