Rails.application.routes.draw do

  # get 'attractions/index'

  # get 'attractions/show'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  
  get'/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  resources :users
  resources :attractions

  root 'static#index'
  
end