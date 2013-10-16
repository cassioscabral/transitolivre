require 'test_helper'

class TipoAcidentesControllerTest < ActionController::TestCase
  setup do
    @tipo_acidente = tipo_acidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_acidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_acidente" do
    assert_difference('TipoAcidente.count') do
      post :create, tipo_acidente: { ttaativo: @tipo_acidente.ttaativo, ttaatualiza: @tipo_acidente.ttaatualiza, ttacodigo: @tipo_acidente.ttacodigo }
    end

    assert_redirected_to tipo_acidente_path(assigns(:tipo_acidente))
  end

  test "should show tipo_acidente" do
    get :show, id: @tipo_acidente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_acidente
    assert_response :success
  end

  test "should update tipo_acidente" do
    patch :update, id: @tipo_acidente, tipo_acidente: { ttaativo: @tipo_acidente.ttaativo, ttaatualiza: @tipo_acidente.ttaatualiza, ttacodigo: @tipo_acidente.ttacodigo }
    assert_redirected_to tipo_acidente_path(assigns(:tipo_acidente))
  end

  test "should destroy tipo_acidente" do
    assert_difference('TipoAcidente.count', -1) do
      delete :destroy, id: @tipo_acidente
    end

    assert_redirected_to tipo_acidentes_path
  end
end
