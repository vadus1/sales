Rails.application.routes.draw do
  resources :sales

  devise_for :users
  resources :products
  root 'products#index'
end
