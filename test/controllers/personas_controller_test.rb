require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { area_laboral_id: @persona.area_laboral_id, baja: @persona.baja, contacto_emergencia: @persona.contacto_emergencia, curp: @persona.curp, edad: @persona.edad, email_coporativo: @persona.email_coporativo, fecha_egreso: @persona.fecha_egreso, fecha_ingreso: @persona.fecha_ingreso, fecha_nacimiento: @persona.fecha_nacimiento, jefe_directo: @persona.jefe_directo, nombre: @persona.nombre, nss: @persona.nss, puesto_laboral_id: @persona.puesto_laboral_id, rfc: @persona.rfc, salario: @persona.salario, telefono_casa: @persona.telefono_casa, telefono_celular: @persona.telefono_celular, telefono_emergencia: @persona.telefono_emergencia }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    patch :update, id: @persona, persona: { area_laboral_id: @persona.area_laboral_id, baja: @persona.baja, contacto_emergencia: @persona.contacto_emergencia, curp: @persona.curp, edad: @persona.edad, email_coporativo: @persona.email_coporativo, fecha_egreso: @persona.fecha_egreso, fecha_ingreso: @persona.fecha_ingreso, fecha_nacimiento: @persona.fecha_nacimiento, jefe_directo: @persona.jefe_directo, nombre: @persona.nombre, nss: @persona.nss, puesto_laboral_id: @persona.puesto_laboral_id, rfc: @persona.rfc, salario: @persona.salario, telefono_casa: @persona.telefono_casa, telefono_celular: @persona.telefono_celular, telefono_emergencia: @persona.telefono_emergencia }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end
