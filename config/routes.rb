Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  patch 'capture/:id' => 'pokemons#capture', as: 'capture'
  patch 'damage/:id' => 'pokemons#damage', as: 'damage'
  get 'new/:id' => 'pokemons#new', as: 'new'
  post 'create' => 'pokemons#create', as: 'create'
end
