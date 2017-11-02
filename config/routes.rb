Rails.application.routes.draw do

  resources :users, :only => [:new, :create]

  get '/signin' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  root 'users#index'

end
