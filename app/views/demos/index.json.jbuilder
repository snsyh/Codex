json.array!(@demos) do |demo|
  json.extract! demo, :id, :name, :title, :price
  json.url demo_url(demo, format: :json)
end
