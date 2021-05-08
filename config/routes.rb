Rails.application.routes.draw do
  # For details on the DSL available within this file, see 
  get '/auth/:provider/callback' => 'sessions#omniauth'
  resources :registrations, only: [:new, :create]
  resources :client_registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :behaviors, only: [:new, :create]
  resources :clients, except: [:new, :create]
  resources :appointments, only: [:new, :create]
  resources :employees, except: [:new, :create] do 
    resources :appointments, shallow: true 
  end

  resources :notes, except: [:index]
get"/login", to: "sessions#new"
end
