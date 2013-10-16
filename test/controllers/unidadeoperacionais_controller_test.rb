require 'test_helper'

class UnidadeoperacionaisControllerTest < ActionController::TestCase
  setup do
    @unidadeoperacional = unidadeoperacionais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unidadeoperacionais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unidadeoperacional" do
    assert_difference('Unidadeoperacional.count') do
      post :create, unidadeoperacional: { unidenominacao: @unidadeoperacional.unidenominacao, unihelicoptero: @unidadeoperacional.unihelicoptero, uniid: @unidadeoperacional.uniid, unilatitude: @unidadeoperacional.unilatitude, unilocal: @unidadeoperacional.unilocal, unilongitude: @unidadeoperacional.unilongitude, unilotacao: @unidadeoperacional.unilotacao, unimunicipio: @unidadeoperacional.unimunicipio, unisigla: @unidadeoperacional.unisigla, unittucodigo: @unidadeoperacional.unittucodigo, uniunidade: @unidadeoperacional.uniunidade, uniunidaderesponsavel: @unidadeoperacional.uniunidaderesponsavel }
    end

    assert_redirected_to unidadeoperacional_path(assigns(:unidadeoperacional))
  end

  test "should show unidadeoperacional" do
    get :show, id: @unidadeoperacional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unidadeoperacional
    assert_response :success
  end

  test "should update unidadeoperacional" do
    patch :update, id: @unidadeoperacional, unidadeoperacional: { unidenominacao: @unidadeoperacional.unidenominacao, unihelicoptero: @unidadeoperacional.unihelicoptero, uniid: @unidadeoperacional.uniid, unilatitude: @unidadeoperacional.unilatitude, unilocal: @unidadeoperacional.unilocal, unilongitude: @unidadeoperacional.unilongitude, unilotacao: @unidadeoperacional.unilotacao, unimunicipio: @unidadeoperacional.unimunicipio, unisigla: @unidadeoperacional.unisigla, unittucodigo: @unidadeoperacional.unittucodigo, uniunidade: @unidadeoperacional.uniunidade, uniunidaderesponsavel: @unidadeoperacional.uniunidaderesponsavel }
    assert_redirected_to unidadeoperacional_path(assigns(:unidadeoperacional))
  end

  test "should destroy unidadeoperacional" do
    assert_difference('Unidadeoperacional.count', -1) do
      delete :destroy, id: @unidadeoperacional
    end

    assert_redirected_to unidadeoperacionais_path
  end
end
