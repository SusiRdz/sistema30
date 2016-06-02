require 'test_helper'

class AreaLaboralsControllerTest < ActionController::TestCase
  setup do
    @area_laboral = area_laborals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:area_laborals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area_laboral" do
    assert_difference('AreaLaboral.count') do
      post :create, area_laboral: { descripcion: @area_laboral.descripcion, jefe_area: @area_laboral.jefe_area, nombre_area: @area_laboral.nombre_area }
    end

    assert_redirected_to area_laboral_path(assigns(:area_laboral))
  end

  test "should show area_laboral" do
    get :show, id: @area_laboral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area_laboral
    assert_response :success
  end

  test "should update area_laboral" do
    patch :update, id: @area_laboral, area_laboral: { descripcion: @area_laboral.descripcion, jefe_area: @area_laboral.jefe_area, nombre_area: @area_laboral.nombre_area }
    assert_redirected_to area_laboral_path(assigns(:area_laboral))
  end

  test "should destroy area_laboral" do
    assert_difference('AreaLaboral.count', -1) do
      delete :destroy, id: @area_laboral
    end

    assert_redirected_to area_laborals_path
  end
end
