Rails.application.routes.draw do
  
  devise_for :users
  
  root 'posts#index'
  
  resources :users, only: :show
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :posts do
    resources :comments
    resources :upvotes, only: :create
    resources :downvotes, only: :create
  end
  
  resources :relationships, only: [:create, :destroy]
  
end
