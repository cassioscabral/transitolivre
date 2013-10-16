require 'test_helper'

class TipodetencoesControllerTest < ActionController::TestCase
  setup do
    @tipodetencao = tipodetencoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipodetencoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipodetencao" do
    assert_difference('Tipodetencao.count') do
      post :create, tipodetencao: { ttdatualiza: @tipodetencao.ttdatualiza, ttdcodigo: @tipodetencao.ttdcodigo, ttddescricao: @tipodetencao.ttddescricao, ttdrelacidente: @tipodetencao.ttdrelacidente }
    end

    assert_redirected_to tipodetencao_path(assigns(:tipodetencao))
  end

  test "should show tipodetencao" do
    get :show, id: @tipodetencao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipodetencao
    assert_response :success
  end

  test "should update tipodetencao" do
    patch :update, id: @tipodetencao, tipodetencao: { ttdatualiza: @tipodetencao.ttdatualiza, ttdcodigo: @tipodetencao.ttdcodigo, ttddescricao: @tipodetencao.ttddescricao, ttdrelacidente: @tipodetencao.ttdrelacidente }
    assert_redirected_to tipodetencao_path(assigns(:tipodetencao))
  end

  test "should destroy tipodetencao" do
    assert_difference('Tipodetencao.count', -1) do
      delete :destroy, id: @tipodetencao
    end

    assert_redirected_to tipodetencoes_path
  end
end
