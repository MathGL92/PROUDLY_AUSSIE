Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :shopping_carts, only: [:create]
  resource :shopping_carts, only: [:show]

  namespace :shopping_cart do
    resources :products, only: [] do
      resources :line_items, only: [:create]
    end
    resources :line_items, only: :destroy
  end

  resources :producers, only:[:index, :show, :new, :create] do
    resources :products, only: [:new, :create, :edit, :update] do
      resources :taggings, only: [:new, :create]
    end
  end

  namespace :producer do
    resources :products, only: :destroy
  end

  get "/new_producer", to: "pages#new_producer"
  get "/producer_confirmation", to: "pages#producer_confirmation"

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  resources :dashboard, only: [:index]

end

