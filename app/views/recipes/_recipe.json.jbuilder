json.extract! recipe, :id, :name, :description :ingredients, :instructions, :chef_id, :created_at, :updated_at
json.extract! creator_of_recipe, :fistName
json.url recipe_url(recipe, format: :json)
