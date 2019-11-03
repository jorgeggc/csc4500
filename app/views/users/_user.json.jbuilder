json.extract! user, :id, :firstName, :lastName, :password, :gender, :DOB, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
