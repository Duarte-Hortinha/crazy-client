Rails.application.routes.draw do
  devise_for :restaurants
  resources :restaurants, only: [:index, :show]
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.

  resources :clients, except: [:destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create] do
    resources :reviews, except: [:destroy]
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
