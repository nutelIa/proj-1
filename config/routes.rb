Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to: 'pokemons', as: :capture
  patch 'damage', to: 'pokemons', as: :damage
  resources :pokemons
  get 'pokemons/new', to: 'pokemons#new'
end
