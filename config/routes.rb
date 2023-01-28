Rails.application.routes.draw do
  #get 'rockets/index'
  devise_for :users
  root to: "pages#home"

  resources :rockets, only: %i[index show new create destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: [:index, :show]

  get "/my_rockets", to: "rockets#my_rockets"


  get '/search', to: 'search#index'

end
