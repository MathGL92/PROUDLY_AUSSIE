Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :shopping_carts, only: [:create]
  resource :shopping_carts, only: [:show]

  resources :producers, only:[:index, :show, :new, :create]

  # post '/add_to_cart/:product_id' => 'shopping_carts#add_to_cart', :as => 'add_to_cart'

  namespace :shopping_cart do
    resources :products, only: [] do
      resources :line_items, only: :create
    end
  end

  get "/new_producer", to: "pages#new_producer"
  get "/producer_confirmation", to: "pages#producer_confirmation"

  resources :dashboard, only: [:index]

end

