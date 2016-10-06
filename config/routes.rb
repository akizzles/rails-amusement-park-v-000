Rails.application.routes.draw do
  
  # root
  root "static#home"

  # routes for sessions controller
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :attractions
  resources :users


end