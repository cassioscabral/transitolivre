require 'test_helper'

class TipounidadeoperacionaisControllerTest < ActionController::TestCase
  setup do
    @tipounidadeoperacional = tipounidadeoperacionais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipounidadeoperacionais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipounidadeoperacional" do
    assert_difference('Tipounidadeoperacional.count') do
      post :create, tipounidadeoperacional: { ttuatualiza: @tipounidadeoperacional.ttuatualiza, ttucodigo: @tipounidadeoperacional.ttucodigo, ttudescricao: @tipounidadeoperacional.ttudescricao }
    end

    assert_redirected_to tipounidadeoperacional_path(assigns(:tipounidadeoperacional))
  end

  test "should show tipounidadeoperacional" do
    get :show, id: @tipounidadeoperacional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipounidadeoperacional
    assert_response :success
  end

  test "should update tipounidadeoperacional" do
    patch :update, id: @tipounidadeoperacional, tipounidadeoperacional: { ttuatualiza: @tipounidadeoperacional.ttuatualiza, ttucodigo: @tipounidadeoperacional.ttucodigo, ttudescricao: @tipounidadeoperacional.ttudescricao }
    assert_redirected_to tipounidadeoperacional_path(assigns(:tipounidadeoperacional))
  end

  test "should destroy tipounidadeoperacional" do
    assert_difference('Tipounidadeoperacional.count', -1) do
      delete :destroy, id: @tipounidadeoperacional
    end

    assert_redirected_to tipounidadeoperacionais_path
  end
end
