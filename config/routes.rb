Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :categories, only: [:index] do
    resources :problems, only: [:index]
  end

  resources :appointments, only: [:create]

  get "appointments/time_location", to: "appointments#time_location", as: :time_location

  get "appointments/fixer", to: "appointments#set_fixer", as: :appointment_fixer

  resources :users, only: [:show] do
    resources :fixers, only: [:new, :create, :destroy]
  end

  resources :problems, only: [:edit, :show, :update, :destroy]
end
