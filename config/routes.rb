Rails.application.routes.draw do
  devise_for :users
  resources :products

  get '/buy/:permalink',  to: 'transactions#new',      as: :show_buy
  post '/buy/:permalink', to: 'transactions#create',   as: :buy
  get '/pickup/:guid',    to: 'transactions#pickup',   as: :pickup
  get '/download/:guid',  to: 'transactions#download', as: :download

  root 'products#index'
end
