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

  # Defines the root path route ("/")
  # root "posts#index"
end
