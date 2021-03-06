Rails.application.routes.draw do

  
  root 'home_pages#home'

  get '/tag',to:'home_pages#tag'
  get '/about',to:'home_pages#about'
  get '/signup',to:'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end