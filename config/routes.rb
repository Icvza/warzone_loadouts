Rails.application.routes.draw do
  resources :tactics
  resources :game_modes
  root 'application#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'application#welcome'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :tactics
  resources :game_modes
  resources :sessions
  resources :users
  resources :loadouts do
    resources :mods
  end
end
