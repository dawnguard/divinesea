json.array!(@droplets) do |droplet|
  json.extract! droplet, :id, :description
  json.url droplet_url(droplet, format: :json)
end
