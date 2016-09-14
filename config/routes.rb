Rails.application.routes.draw do

  get 'home/index'

  resources :users
  resources :sessions, only: [:create, :destroy]

  get '/login' => 'sessions#new', as: :login
  delete '/logout' => 'sessions#destroy', as: :logout

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
