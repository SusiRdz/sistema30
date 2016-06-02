json.array!(@num_eventos) do |num_evento|
  json.extract! num_evento, :id, :tema, :descripcion, :quien_presenta, :observaciones, :responsable, :fecha_inicio, :fecha_compromiso, :pospuesto
  json.url num_evento_url(num_evento, format: :json)
end
