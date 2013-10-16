require 'test_helper'

class PessoasControllerTest < ActionController::TestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post :create, pessoa: { descricao_cicatriz: @pessoa.descricao_cicatriz, descricao_deficiencia: @pessoa.descricao_deficiencia, descricao_sinal: @pessoa.descricao_sinal, pesalcool: @pessoa.pesalcool, pesaltura: @pessoa.pesaltura, pesapelido: @pessoa.pesapelido, pescapacete: @pessoa.pescapacete, pescategcnh: @pessoa.pescategcnh, pescicatriz: @pessoa.pescicatriz, pescinto: @pessoa.pescinto, pesdadoscomplement: @pessoa.pesdadoscomplement, pesdatahabil: @pessoa.pesdatahabil, pesdatavalidade: @pessoa.pesdatavalidade, pesdormindo: @pessoa.pesdormindo, peshabilitado: @pessoa.peshabilitado, peshorapercorre: @pessoa.peshorapercorre, pesid: @pessoa.pesid, pesidade: @pessoa.pesidade, peskmpercorre: @pessoa.peskmpercorre, peslesao: @pessoa.peslesao, pesmunicipiodest: @pessoa.pesmunicipiodest, pesmunicipioori: @pessoa.pesmunicipioori, pesnacionalidade: @pessoa.pesnacionalidade, pesnaturalidade: @pessoa.pesnaturalidade, pesoenid: @pessoa.pesoenid, pespaisori: @pessoa.pespaisori, pespertences: @pessoa.pespertences, pespeso: @pessoa.pespeso, pessexo: @pessoa.pessexo, pessinal: @pessoa.pessinal, pessocorrido: @pessoa.pessocorrido, pestatuagem: @pessoa.pestatuagem, pestcccodigo: @pessoa.pestcccodigo, pestctcodigo: @pessoa.pestctcodigo, pestctcodigo: @pessoa.pestctcodigo, pestgicodigo: @pessoa.pestgicodigo, pestopcodigo: @pessoa.pestopcodigo, pesufexpedidora: @pessoa.pesufexpedidora, pesveiid: @pessoa.pesveiid, vestigios_drogas: @pessoa.vestigios_drogas }
    end

    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should show pessoa" do
    get :show, id: @pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa
    assert_response :success
  end

  test "should update pessoa" do
    patch :update, id: @pessoa, pessoa: { descricao_cicatriz: @pessoa.descricao_cicatriz, descricao_deficiencia: @pessoa.descricao_deficiencia, descricao_sinal: @pessoa.descricao_sinal, pesalcool: @pessoa.pesalcool, pesaltura: @pessoa.pesaltura, pesapelido: @pessoa.pesapelido, pescapacete: @pessoa.pescapacete, pescategcnh: @pessoa.pescategcnh, pescicatriz: @pessoa.pescicatriz, pescinto: @pessoa.pescinto, pesdadoscomplement: @pessoa.pesdadoscomplement, pesdatahabil: @pessoa.pesdatahabil, pesdatavalidade: @pessoa.pesdatavalidade, pesdormindo: @pessoa.pesdormindo, peshabilitado: @pessoa.peshabilitado, peshorapercorre: @pessoa.peshorapercorre, pesid: @pessoa.pesid, pesidade: @pessoa.pesidade, peskmpercorre: @pessoa.peskmpercorre, peslesao: @pessoa.peslesao, pesmunicipiodest: @pessoa.pesmunicipiodest, pesmunicipioori: @pessoa.pesmunicipioori, pesnacionalidade: @pessoa.pesnacionalidade, pesnaturalidade: @pessoa.pesnaturalidade, pesoenid: @pessoa.pesoenid, pespaisori: @pessoa.pespaisori, pespertences: @pessoa.pespertences, pespeso: @pessoa.pespeso, pessexo: @pessoa.pessexo, pessinal: @pessoa.pessinal, pessocorrido: @pessoa.pessocorrido, pestatuagem: @pessoa.pestatuagem, pestcccodigo: @pessoa.pestcccodigo, pestctcodigo: @pessoa.pestctcodigo, pestctcodigo: @pessoa.pestctcodigo, pestgicodigo: @pessoa.pestgicodigo, pestopcodigo: @pessoa.pestopcodigo, pesufexpedidora: @pessoa.pesufexpedidora, pesveiid: @pessoa.pesveiid, vestigios_drogas: @pessoa.vestigios_drogas }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete :destroy, id: @pessoa
    end

    assert_redirected_to pessoas_path
  end
end
