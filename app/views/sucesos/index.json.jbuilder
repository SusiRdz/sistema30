json.array!(@sucesos) do |suceso|
  json.extract! suceso, :id, :num_evento_id, :mensaje
  json.url suceso_url(suceso, format: :json)
end
