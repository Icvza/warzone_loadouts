Rails.application.routes.draw do
  root 'application#welcome'
  get '/', to: 'application#welcome'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  resources :gamemodes
  resources :sessions
  resources :users
  resources :tactics do 
    resources :loadouts
  end
  resources :loadouts
end