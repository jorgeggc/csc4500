class SignedinuserController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def showFavorites
    @user = User.where("id = ?", current_user)
    @favorites = Favorite.where("user_id = ?", current_user)
    puts(@favorites)
    @recipeArray = Array.new
    @favorites.each do |f|
      @recipeArray.push(Recipe.where("id = ?", f.recipe_id))
    end
    #puts(chef_id_string)
    #@recipes = @recipes + Recipe.where("id = ?", chef_id_string)
    puts(@recipes)
  end
end
