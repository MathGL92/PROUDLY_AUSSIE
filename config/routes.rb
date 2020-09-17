Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :shopping_carts, only: [:create]
  resource :shopping_carts, only: [:show]

  resources :producers, only:[:index, :show, :new, :create] 
  get "/new_producer", to: "pages#new_producer"
  get "/producer_confirmation", to: "pages#producer_confirmation"
  resources :orders, only: [:show, :create]
  resources :dashboard, only: [:index]
end

