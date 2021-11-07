Rails.application.routes.draw do
  resources :invoices
  resources :customers
  get 'dashboard/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'dashboard#index'
end
