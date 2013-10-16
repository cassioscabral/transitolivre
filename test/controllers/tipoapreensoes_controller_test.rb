require 'test_helper'

class TipoapreensoesControllerTest < ActionController::TestCase
  setup do
    @tipoapreensao = tipoapreensoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoapreensoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoapreensao" do
    assert_difference('Tipoapreensao.count') do
      post :create, tipoapreensao: { ttpatualiza: @tipoapreensao.ttpatualiza, ttpcodigo: @tipoapreensao.ttpcodigo }
    end

    assert_redirected_to tipoapreensao_path(assigns(:tipoapreensao))
  end

  test "should show tipoapreensao" do
    get :show, id: @tipoapreensao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoapreensao
    assert_response :success
  end

  test "should update tipoapreensao" do
    patch :update, id: @tipoapreensao, tipoapreensao: { ttpatualiza: @tipoapreensao.ttpatualiza, ttpcodigo: @tipoapreensao.ttpcodigo }
    assert_redirected_to tipoapreensao_path(assigns(:tipoapreensao))
  end

  test "should destroy tipoapreensao" do
    assert_difference('Tipoapreensao.count', -1) do
      delete :destroy, id: @tipoapreensao
    end

    assert_redirected_to tipoapreensoes_path
  end
end
