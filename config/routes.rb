Rails.application.routes.draw do

  get 'registrations/new'

  get 'home/index'

  resources :users

  get '/signup' => 'registrations#new', as: :signup
  post '/signup' => 'registrations#create'
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
