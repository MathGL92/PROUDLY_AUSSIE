Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :shopping_carts, only: [:create]
  resource :shopping_carts, only: [:show]

  resources :producers, only:[:index, :show, :new, :create] do
    resources :products, only: [:new, :create]
  end
  get "/new_producer", to: "pages#new_producer"
  get "/producer_confirmation", to: "pages#producer_confirmation"

  resources :dashboard, only: [:index]

end

