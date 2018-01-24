Rails.application.routes.draw do

  devise_for :users
  root controller: :restaurant, action: :index
  resources :restaurant, only: [:show, :create]
  resources :orders, only: [:show, :create, :update]
  resources :charges, only: [:create, :show]

  namespace :api do
    resources :restaurants, only: [:index, :show]
  end
end
