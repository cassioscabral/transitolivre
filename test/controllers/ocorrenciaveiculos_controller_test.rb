require 'test_helper'

class OcorrenciaveiculosControllerTest < ActionController::TestCase
  setup do
    @ocorrenciaveiculo = ocorrenciaveiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ocorrenciaveiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocorrenciaveiculo" do
    assert_difference('Ocorrenciaveiculo.count') do
      post :create, ocorrenciaveiculo: { ocvid: @ocorrenciaveiculo.ocvid, ocvocoid: @ocorrenciaveiculo.ocvocoid, ocvveiid: @ocorrenciaveiculo.ocvveiid }
    end

    assert_redirected_to ocorrenciaveiculo_path(assigns(:ocorrenciaveiculo))
  end

  test "should show ocorrenciaveiculo" do
    get :show, id: @ocorrenciaveiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ocorrenciaveiculo
    assert_response :success
  end

  test "should update ocorrenciaveiculo" do
    patch :update, id: @ocorrenciaveiculo, ocorrenciaveiculo: { ocvid: @ocorrenciaveiculo.ocvid, ocvocoid: @ocorrenciaveiculo.ocvocoid, ocvveiid: @ocorrenciaveiculo.ocvveiid }
    assert_redirected_to ocorrenciaveiculo_path(assigns(:ocorrenciaveiculo))
  end

  test "should destroy ocorrenciaveiculo" do
    assert_difference('Ocorrenciaveiculo.count', -1) do
      delete :destroy, id: @ocorrenciaveiculo
    end

    assert_redirected_to ocorrenciaveiculos_path
  end
end
