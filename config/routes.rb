Rails.application.routes.draw do
  root "welcome#index"
  resources :favorites
  resources :recipes
  resources :users
  resources :chefs
  resources :restaurants
  resources :state_countries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
