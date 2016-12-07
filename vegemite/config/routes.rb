Rails.application.routes.draw do
  get 'reservations/index'

  get 'reservations/show'

  get 'reservations/new'

  get 'reservations/create'

  get 'reservations/update'

  get 'reservations/edit'

  get 'reservations/destroy'

  resources :users
  resources :gardens
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
