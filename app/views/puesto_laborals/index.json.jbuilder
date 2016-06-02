json.array!(@puesto_laborals) do |puesto_laboral|
  json.extract! puesto_laboral, :id, :nombre_puesto, :descripcion
  json.url puesto_laboral_url(puesto_laboral, format: :json)
end
