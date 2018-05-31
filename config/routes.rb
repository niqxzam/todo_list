Rails.application.routes.draw do


  resources :listings

  get '/', to: 'users#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  root "users#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
