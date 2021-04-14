Rails.application.routes.draw do
  # For details on the DSL available within this file, see 
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :employees, except: [:new, :create]
  resources :clients, except: [:new, :create]
  resources :appointments
  resources :notes, except: [:index]

end
