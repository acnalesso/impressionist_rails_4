json.array!(@sponges) do |sponge|
  json.extract! sponge, 
  json.url sponge_url(sponge, format: :json)
end
