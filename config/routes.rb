Rails.application.routes.draw do
  get 'signedinchef/index'
  root "sessions#new"
  get 'signedinuser/index'
  resources :favorites
  resources :recipes
  resources :users
  resources :chefs
  resources :restaurants
  resources :sessions, only: [:new, :create, :destroy]
  resources :state_countries
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'home', to: 'signedinuser#index', as: 'home'
  get 'chef_home', to: 'signedinchef#index', as: 'chef_home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
