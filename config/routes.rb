Rails.application.routes.draw do

  get 'home/index'

  resources :users
  resources :sessions, only: [:create, :destroy]

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
