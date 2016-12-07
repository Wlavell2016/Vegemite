Rails.application.routes.draw do

  resources :users
  resources :gardens do
    resources :reservations
  end
end
