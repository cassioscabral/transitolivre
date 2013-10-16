require 'test_helper'

class OcorrenciaacidentesControllerTest < ActionController::TestCase
  setup do
    @ocorrenciaacidente = ocorrenciaacidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ocorrenciaacidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocorrenciaacidente" do
    assert_difference('Ocorrenciaacidente.count') do
      post :create, ocorrenciaacidente: { oacacostamento1: @ocorrenciaacidente.oacacostamento1, oacacostamento2: @ocorrenciaacidente.oacacostamento2, oaccanteiro: @ocorrenciaacidente.oaccanteiro, oaccanteiro: @ocorrenciaacidente.oaccanteiro, oacdano: @ocorrenciaacidente.oacdano, oacdanoamb: @ocorrenciaacidente.oacdanoamb, oacdanoterc: @ocorrenciaacidente.oacdanoterc, oacdescdanoamb: @ocorrenciaacidente.oacdescdanoamb, oacdescdanopat: @ocorrenciaacidente.oacdescdanopat, oacdescdanoterc: @ocorrenciaacidente.oacdescdanoterc, oacdistab: @ocorrenciaacidente.oacdistab, oacdistac: @ocorrenciaacidente.oacdistac, oacdistbc: @ocorrenciaacidente.oacdistbc, oacgirafundo: @ocorrenciaacidente.oacgirafundo, oacimagem: @ocorrenciaacidente.oacimagem, oacimagemlen: @ocorrenciaacidente.oacimagemlen, oaclatitude: @ocorrenciaacidente.oaclatitude, oaclongitude: @ocorrenciaacidente.oaclongitude, oacmodelopista: @ocorrenciaacidente.oacmodelopista, oacocoid: @ocorrenciaacidente.oacocoid, oacorientpista: @ocorrenciaacidente.oacorientpista, oacqtdfaixa1: @ocorrenciaacidente.oacqtdfaixa1, oacqtdfaixa2: @ocorrenciaacidente.oacqtdfaixa2, oacrefera: @ocorrenciaacidente.oacrefera, oacreferb: @ocorrenciaacidente.oacreferb, oacsentido1: @ocorrenciaacidente.oacsentido1, oacsentido2: @ocorrenciaacidente.oacsentido2, oacsitio: @ocorrenciaacidente.oacsitio, oactcacodigo: @ocorrenciaacidente.oactcacodigo, oacttacodigo: @ocorrenciaacidente.oacttacodigo, oacversaocroqui: @ocorrenciaacidente.oacversaocroqui }
    end

    assert_redirected_to ocorrenciaacidente_path(assigns(:ocorrenciaacidente))
  end

  test "should show ocorrenciaacidente" do
    get :show, id: @ocorrenciaacidente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ocorrenciaacidente
    assert_response :success
  end

  test "should update ocorrenciaacidente" do
    patch :update, id: @ocorrenciaacidente, ocorrenciaacidente: { oacacostamento1: @ocorrenciaacidente.oacacostamento1, oacacostamento2: @ocorrenciaacidente.oacacostamento2, oaccanteiro: @ocorrenciaacidente.oaccanteiro, oaccanteiro: @ocorrenciaacidente.oaccanteiro, oacdano: @ocorrenciaacidente.oacdano, oacdanoamb: @ocorrenciaacidente.oacdanoamb, oacdanoterc: @ocorrenciaacidente.oacdanoterc, oacdescdanoamb: @ocorrenciaacidente.oacdescdanoamb, oacdescdanopat: @ocorrenciaacidente.oacdescdanopat, oacdescdanoterc: @ocorrenciaacidente.oacdescdanoterc, oacdistab: @ocorrenciaacidente.oacdistab, oacdistac: @ocorrenciaacidente.oacdistac, oacdistbc: @ocorrenciaacidente.oacdistbc, oacgirafundo: @ocorrenciaacidente.oacgirafundo, oacimagem: @ocorrenciaacidente.oacimagem, oacimagemlen: @ocorrenciaacidente.oacimagemlen, oaclatitude: @ocorrenciaacidente.oaclatitude, oaclongitude: @ocorrenciaacidente.oaclongitude, oacmodelopista: @ocorrenciaacidente.oacmodelopista, oacocoid: @ocorrenciaacidente.oacocoid, oacorientpista: @ocorrenciaacidente.oacorientpista, oacqtdfaixa1: @ocorrenciaacidente.oacqtdfaixa1, oacqtdfaixa2: @ocorrenciaacidente.oacqtdfaixa2, oacrefera: @ocorrenciaacidente.oacrefera, oacreferb: @ocorrenciaacidente.oacreferb, oacsentido1: @ocorrenciaacidente.oacsentido1, oacsentido2: @ocorrenciaacidente.oacsentido2, oacsitio: @ocorrenciaacidente.oacsitio, oactcacodigo: @ocorrenciaacidente.oactcacodigo, oacttacodigo: @ocorrenciaacidente.oacttacodigo, oacversaocroqui: @ocorrenciaacidente.oacversaocroqui }
    assert_redirected_to ocorrenciaacidente_path(assigns(:ocorrenciaacidente))
  end

  test "should destroy ocorrenciaacidente" do
    assert_difference('Ocorrenciaacidente.count', -1) do
      delete :destroy, id: @ocorrenciaacidente
    end

    assert_redirected_to ocorrenciaacidentes_path
  end
end
