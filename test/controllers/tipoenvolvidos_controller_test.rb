require 'test_helper'

class TipoenvolvidosControllerTest < ActionController::TestCase
  setup do
    @tipoenvolvido = tipoenvolvidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoenvolvidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoenvolvido" do
    assert_difference('Tipoenvolvido.count') do
      post :create, tipoenvolvido: { tteativo: @tipoenvolvido.tteativo, tteatualiza: @tipoenvolvido.tteatualiza, ttecodigo: @tipoenvolvido.ttecodigo }
    end

    assert_redirected_to tipoenvolvido_path(assigns(:tipoenvolvido))
  end

  test "should show tipoenvolvido" do
    get :show, id: @tipoenvolvido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoenvolvido
    assert_response :success
  end

  test "should update tipoenvolvido" do
    patch :update, id: @tipoenvolvido, tipoenvolvido: { tteativo: @tipoenvolvido.tteativo, tteatualiza: @tipoenvolvido.tteatualiza, ttecodigo: @tipoenvolvido.ttecodigo }
    assert_redirected_to tipoenvolvido_path(assigns(:tipoenvolvido))
  end

  test "should destroy tipoenvolvido" do
    assert_difference('Tipoenvolvido.count', -1) do
      delete :destroy, id: @tipoenvolvido
    end

    assert_redirected_to tipoenvolvidos_path
  end
end
