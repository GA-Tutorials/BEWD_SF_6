json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :color, :age
  json.url cat_url(cat, format: :json)
end
