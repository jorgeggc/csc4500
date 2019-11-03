class SignedinchefController < ApplicationController
  def index
    @recipes = Recipe.where("chef_id = ?", current_chef)
  end
end
