Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture/:id', as:'capture', to: 'pokemon#capture'
  patch '/trainer/:id', as:'damage', to:'pokemon#damage'
  get '/pokemons/new', as:'new', to:'pokemon#new'
  post '/pokemons/new', as:'create', to:'pokemon#create'
  
  
end
