Rails.application.routes.draw do
  devise_for :restaurants
  resources :restaurants, only: [:index, :show]

  resources :clients, except: [:destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create] do
    collection do
      get 'without_reviews'
    end
    resources :reviews, except: [:index, :destroy]
  end

  root to: "clients#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'search', to: 'clients#index', as: :search

  get "up" => "rails/health#show", as: :rails_health_check
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.


  # Defines the root path route ("/")
  # root "posts#index"
end
