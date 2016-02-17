json.array!(@artis) do |arti|
  json.extract! arti, :id, :name
  json.url arti_url(arti, format: :json)
end
