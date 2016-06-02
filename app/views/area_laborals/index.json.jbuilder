json.array!(@area_laborals) do |area_laboral|
  json.extract! area_laboral, :id, :nombre_area, :jefe_area, :descripcion
  json.url area_laboral_url(area_laboral, format: :json)
end
