require 'test_helper'

class PuestoLaboralsControllerTest < ActionController::TestCase
  setup do
    @puesto_laboral = puesto_laborals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puesto_laborals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puesto_laboral" do
    assert_difference('PuestoLaboral.count') do
      post :create, puesto_laboral: { descripcion: @puesto_laboral.descripcion, nombre_puesto: @puesto_laboral.nombre_puesto }
    end

    assert_redirected_to puesto_laboral_path(assigns(:puesto_laboral))
  end

  test "should show puesto_laboral" do
    get :show, id: @puesto_laboral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puesto_laboral
    assert_response :success
  end

  test "should update puesto_laboral" do
    patch :update, id: @puesto_laboral, puesto_laboral: { descripcion: @puesto_laboral.descripcion, nombre_puesto: @puesto_laboral.nombre_puesto }
    assert_redirected_to puesto_laboral_path(assigns(:puesto_laboral))
  end

  test "should destroy puesto_laboral" do
    assert_difference('PuestoLaboral.count', -1) do
      delete :destroy, id: @puesto_laboral
    end

    assert_redirected_to puesto_laborals_path
  end
end
