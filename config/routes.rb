Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :rockets, only: %i[index show create destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
