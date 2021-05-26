Rails.application.routes.draw do
  root 'application#welcome'
  get '/', to: 'application#welcome'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/search', to: 'tactics#search'
  get '/loadouts/abc', to: 'loadouts#abc'
  resources :gamemodes
  resources :sessions
  resources :users
  resources :loadouts do 
    resources :tactics
  end
  resources :tactics
end