json.array!(@bikes) do |bike|
  json.extract! bike, :id, :is_available, :unlock_code
  json.url bike_url(bike, format: :json)
end
