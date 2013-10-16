require 'test_helper'

class TipodocumentosControllerTest < ActionController::TestCase
  setup do
    @tipodocumento = tipodocumentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipodocumentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipodocumento" do
    assert_difference('Tipodocumento.count') do
      post :create, tipodocumento: { ttoatualiza: @tipodocumento.ttoatualiza, ttocodigo: @tipodocumento.ttocodigo, ttodescricao: @tipodocumento.ttodescricao, ttorelapreensao: @tipodocumento.ttorelapreensao, ttorelrecuperacao: @tipodocumento.ttorelrecuperacao }
    end

    assert_redirected_to tipodocumento_path(assigns(:tipodocumento))
  end

  test "should show tipodocumento" do
    get :show, id: @tipodocumento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipodocumento
    assert_response :success
  end

  test "should update tipodocumento" do
    patch :update, id: @tipodocumento, tipodocumento: { ttoatualiza: @tipodocumento.ttoatualiza, ttocodigo: @tipodocumento.ttocodigo, ttodescricao: @tipodocumento.ttodescricao, ttorelapreensao: @tipodocumento.ttorelapreensao, ttorelrecuperacao: @tipodocumento.ttorelrecuperacao }
    assert_redirected_to tipodocumento_path(assigns(:tipodocumento))
  end

  test "should destroy tipodocumento" do
    assert_difference('Tipodocumento.count', -1) do
      delete :destroy, id: @tipodocumento
    end

    assert_redirected_to tipodocumentos_path
  end
end
