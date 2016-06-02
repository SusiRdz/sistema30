require 'test_helper'

class ReunionsControllerTest < ActionController::TestCase
  setup do
    @reunion = reunions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reunions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reunion" do
    assert_difference('Reunion.count') do
      post :create, reunion: { fecha: @reunion.fecha, num_evento_id: @reunion.num_evento_id }
    end

    assert_redirected_to reunion_path(assigns(:reunion))
  end

  test "should show reunion" do
    get :show, id: @reunion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reunion
    assert_response :success
  end

  test "should update reunion" do
    patch :update, id: @reunion, reunion: { fecha: @reunion.fecha, num_evento_id: @reunion.num_evento_id }
    assert_redirected_to reunion_path(assigns(:reunion))
  end

  test "should destroy reunion" do
    assert_difference('Reunion.count', -1) do
      delete :destroy, id: @reunion
    end

    assert_redirected_to reunions_path
  end
end
