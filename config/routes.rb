Rails.application.routes.draw do
  resources :users, only: [:new,:create,:show]
  resources :attractions 
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy' 
end
