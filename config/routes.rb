Rails.application.routes.draw do
  #get 'rockets/index'
  devise_for :users
  root to: "pages#home"

  resources :rockets, only: %i[index show new create destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: [:index, :show]

  get "/my_rockets", to: "rockets#my_rockets"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "rockets", to: "rockets#index"
  # post "/rockets/new", to: "rockets#create"
  # get "/rockets/rocket_id", to: "rockets#show"
  # delete "/rockets/rocket_id", to: "rockets#delete"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :rockets, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show]

  get '/search', to: 'search#index'

end
