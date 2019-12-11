Rails.application.routes.draw do
  resources :admins
  get 'signedinchef/index'
  root "sessions#new"
  get 'signedinuser/index'
  get 'signedinuser/showFavorites'
  resources :favorites
  resources :recipes
  resources :users
  resources :chefs
  resources :restaurants
  resources :sessions, only: [:new, :create, :destroy]
  resources :state_countries
  resources :admins
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'home', to: 'signedinuser#index', as: 'home'
  get 'admin_home', to: 'admins#index', as: 'admin_home'
  get 'admin_users', to: 'admins#showUsers', as: 'admin_users'
  get 'admin_chefs', to: 'admins#showChefs', as: 'admin_chefs'
  get 'admin_recipes', to: 'admins#showRecipes', as: 'admin_recipes'
  get 'admin_restaurants', to: 'admins#showRestaurants', as: 'admin_restaurants'
  get 'user_favorites', to: 'signedinuser#showFavorites', as: 'user_favorites'
  get 'chef_home', to: 'signedinchef#index', as: 'chef_home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
