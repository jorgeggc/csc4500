json.extract! restaurant, :id, :address, :city, :state :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
