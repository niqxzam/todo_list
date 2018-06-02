Rails.application.routes.draw do


  resources :listings do

  get '/listings', to: 'listings#index'
  get '/listings/new', to: 'listings#new'
  post '/listings', to: 'listings#create'
  delete '/listings/:id', to: 'listings#destroy'
  get '/listings/:id/edit', to: 'listings#edit'

end

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
