Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'
  get "/:new_producer", to: "pages#new_producer"


  resources :producers, only:[:index, :show, :new]
end
