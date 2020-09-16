Rails.application.routes.draw do

  devise_for :users
  resources :shopping_carts, only: [:create]
  resource :shopping_carts, only: [:show]

  root to: 'pages#home'

  resources :producers, only:[:index, :show, :new]
  get "/new_producer", to: "pages#new_producer"
end

