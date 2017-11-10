Rails.application.routes.draw do

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  
  get'/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  post '/rides/new' => 'rides#create'

  resources :users
  resources :attractions

  root 'static#index'
  
end