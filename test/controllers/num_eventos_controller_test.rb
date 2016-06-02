require 'test_helper'

class NumEventosControllerTest < ActionController::TestCase
  setup do
    @num_evento = num_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:num_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create num_evento" do
    assert_difference('NumEvento.count') do
      post :create, num_evento: { descripcion: @num_evento.descripcion, fecha_compromiso: @num_evento.fecha_compromiso, fecha_inicio: @num_evento.fecha_inicio, observaciones: @num_evento.observaciones, pospuesto: @num_evento.pospuesto, quien_presenta: @num_evento.quien_presenta, responsable: @num_evento.responsable, tema: @num_evento.tema }
    end

    assert_redirected_to num_evento_path(assigns(:num_evento))
  end

  test "should show num_evento" do
    get :show, id: @num_evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @num_evento
    assert_response :success
  end

  test "should update num_evento" do
    patch :update, id: @num_evento, num_evento: { descripcion: @num_evento.descripcion, fecha_compromiso: @num_evento.fecha_compromiso, fecha_inicio: @num_evento.fecha_inicio, observaciones: @num_evento.observaciones, pospuesto: @num_evento.pospuesto, quien_presenta: @num_evento.quien_presenta, responsable: @num_evento.responsable, tema: @num_evento.tema }
    assert_redirected_to num_evento_path(assigns(:num_evento))
  end

  test "should destroy num_evento" do
    assert_difference('NumEvento.count', -1) do
      delete :destroy, id: @num_evento
    end

    assert_redirected_to num_eventos_path
  end
end
