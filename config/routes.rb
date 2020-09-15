Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'


  resources :producers, only:[:index, :show]
end
