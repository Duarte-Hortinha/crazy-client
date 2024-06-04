Rails.application.routes.draw do
  devise_for :restaurants
  resources :restaurants, only: [:index, :show]

  resources :clients, except: [:destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create] do
    resources :reviews, except: [:destroy]
  end
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.


  # Defines the root path route ("/")
  # root "posts#index"
end
