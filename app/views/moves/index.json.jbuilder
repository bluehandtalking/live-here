json.array!(@moves) do |move|
  json.extract! move, :id, :weather, :budget, :safety, :recreation
  json.url move_url(move, format: :json)
end
