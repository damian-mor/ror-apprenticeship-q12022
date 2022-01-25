Rails.application.routes.draw do
  root 'pokemons#index'

  devise_for :users
  resources :egg_groups
  resources :pokemons
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
