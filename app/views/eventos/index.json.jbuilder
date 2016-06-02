json.array!(@eventos) do |evento|
  json.extract! evento, :id, :num_evento_id, :persona_id
  json.url evento_url(evento, format: :json)
end
