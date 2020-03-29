Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :appointments, only: [:new, :create]
  end

  resources :appointments, only: [:show, :update, :destroy]

  get "appointments/:id/preference", to: "appointments#preference", as: :appointment_preference
  get "appointments/:id/fixer", to: "appointments#fixer", as: :appointment_fixer


  resources :users, only: [:show] do
    resources :fixers, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :problems, only: [:show, :destroy]
end
