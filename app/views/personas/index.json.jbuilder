json.array!(@personas) do |persona|
  json.extract! persona, :id, :nombre, :fecha_nacimiento, :edad, :curp, :rfc, :nss, :telefono_casa, :telefono_celular, :contacto_emergencia, :telefono_emergencia, :fecha_ingreso, :jefe_directo, :area_laboral_id, :email_coporativo, :puesto_laboral_id, :salario, :fecha_egreso, :baja
  json.url persona_url(persona, format: :json)
end
