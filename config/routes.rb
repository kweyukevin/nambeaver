Rails.application.routes.draw do
  
  get 'invoices', to: 'invoices#invoice'
  resources :invoices
  resources :customers
  get 'dashboard/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'dashboard#index'
end
