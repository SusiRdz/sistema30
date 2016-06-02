json.array!(@reunions) do |reunion|
  json.extract! reunion, :id, :num_evento_id, :fecha
  json.url reunion_url(reunion, format: :json)
end
