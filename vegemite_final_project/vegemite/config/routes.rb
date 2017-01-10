Rails.application.routes.draw do
 root 'users#index'
 #change to landing page in the future.
 get '/login/' => 'sessions#new'
 get '/logout/' => 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :gardens do
    resources :reservations
  end
end
