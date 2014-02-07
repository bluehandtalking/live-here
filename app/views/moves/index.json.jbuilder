json.array!(@moves) do |move|
  json.extract! move, :id, :title, :moderate, :hot, :cold, :bunny, :cautious, :badass, :poor, :solid, :bling, :hike, :theater, :lecture
  json.url move_url(move, format: :json)
end
