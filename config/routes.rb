Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :appointments, only: [:new, :create]
  end

  resources :appointments, only: [:show, :update, :destroy] do
  # add payments routes here nested under appointements
    resources :payments, only: :new
  end

  get "appointments/:id/preference", to: "appointments#preference", as: :appointment_preference
  get "appointments/:id/fixer", to: "appointments#fixer", as: :appointment_fixer
# get "appointments/:id/payment", to: "appointments#payment", as: :appointment_payment

  resources :users, only: [:show] do
    resources :fixers, only: [:new, :create]
  end

  resources :fixers, only: [:edit, :update, :destroy] do
    resources :specialities, only: [:create]
  end

  get "fixers/:id/details", to: "fixers#details", as: :fixer_details
  get "fixers/:id/appointments", to: "fixers#appointments", as: :fixer_appointments

  resources :problems, only: [:show, :destroy]

  resources :specialities, only: [:destroy]
end
