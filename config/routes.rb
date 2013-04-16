Rails.application.routes.draw do
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
