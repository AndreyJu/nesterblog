Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  resources :comments
  get '/iam', to: 'user#show'
end
