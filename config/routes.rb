Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  resources :producers, only:[:index, :show, :new]
  get "/new_producer", to: "pages#new_producer"
end
