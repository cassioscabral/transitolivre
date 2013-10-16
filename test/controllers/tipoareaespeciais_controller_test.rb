require 'test_helper'

class TipoareaespeciaisControllerTest < ActionController::TestCase
  setup do
    @tipoareaespecial = tipoareaespeciais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoareaespeciais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoareaespecial" do
    assert_difference('Tipoareaespecial.count') do
      post :create, tipoareaespecial: { taeatualiza: @tipoareaespecial.taeatualiza, taecodigo: @tipoareaespecial.taecodigo, taedescricao: @tipoareaespecial.taedescricao }
    end

    assert_redirected_to tipoareaespecial_path(assigns(:tipoareaespecial))
  end

  test "should show tipoareaespecial" do
    get :show, id: @tipoareaespecial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoareaespecial
    assert_response :success
  end

  test "should update tipoareaespecial" do
    patch :update, id: @tipoareaespecial, tipoareaespecial: { taeatualiza: @tipoareaespecial.taeatualiza, taecodigo: @tipoareaespecial.taecodigo, taedescricao: @tipoareaespecial.taedescricao }
    assert_redirected_to tipoareaespecial_path(assigns(:tipoareaespecial))
  end

  test "should destroy tipoareaespecial" do
    assert_difference('Tipoareaespecial.count', -1) do
      delete :destroy, id: @tipoareaespecial
    end

    assert_redirected_to tipoareaespeciais_path
  end
end
