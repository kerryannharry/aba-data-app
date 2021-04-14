Rails.application.routes.draw do
  # For details on the DSL available within this file, see 
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :clients, except: [:new, :create]
  resources :appointments, only: [:new, :create, :index]
  resources :employees, except: [:new, :create] do 
    resources :appointments, shallow: true 
  end

  resources :notes, except: [:index]

end
