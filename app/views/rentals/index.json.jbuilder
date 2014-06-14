json.array!(@rentals) do |rental|
  json.extract! rental, :id, :user_id, :bike_id
  json.url rental_url(rental, format: :json)
end
