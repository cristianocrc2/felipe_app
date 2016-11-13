require 'test_helper'

class RepresentantesControllerTest < ActionController::TestCase
  setup do
    @representante = representantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:representantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create representante" do
    assert_difference('Representante.count') do
      post :create, representante: { fabricante_id: @representante.fabricante_id }
    end

    assert_redirected_to representante_path(assigns(:representante))
  end

  test "should show representante" do
    get :show, id: @representante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @representante
    assert_response :success
  end

  test "should update representante" do
    patch :update, id: @representante, representante: { fabricante_id: @representante.fabricante_id }
    assert_redirected_to representante_path(assigns(:representante))
  end

  test "should destroy representante" do
    assert_difference('Representante.count', -1) do
      delete :destroy, id: @representante
    end

    assert_redirected_to representantes_path
  end
end
