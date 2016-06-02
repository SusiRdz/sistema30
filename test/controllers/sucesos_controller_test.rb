require 'test_helper'

class SucesosControllerTest < ActionController::TestCase
  setup do
    @suceso = sucesos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sucesos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suceso" do
    assert_difference('Suceso.count') do
      post :create, suceso: { mensaje: @suceso.mensaje, num_evento_id: @suceso.num_evento_id }
    end

    assert_redirected_to suceso_path(assigns(:suceso))
  end

  test "should show suceso" do
    get :show, id: @suceso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suceso
    assert_response :success
  end

  test "should update suceso" do
    patch :update, id: @suceso, suceso: { mensaje: @suceso.mensaje, num_evento_id: @suceso.num_evento_id }
    assert_redirected_to suceso_path(assigns(:suceso))
  end

  test "should destroy suceso" do
    assert_difference('Suceso.count', -1) do
      delete :destroy, id: @suceso
    end

    assert_redirected_to sucesos_path
  end
end
