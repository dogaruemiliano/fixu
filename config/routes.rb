Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :categories, only: [:index] do
    resources :problems, only: [:index]
  end

  resources :appointments, only: [:create]

  resources :users, only: [:show] do
    resources :fixers, only: [:new, :create, :destroy]
  end

  resources :problems, only: [:edit, :show, :update, :destroy]
end
