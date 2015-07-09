Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "home#index"
  resources :users
  resources :listings do
    resources :reviews
  end
  resource :favorites
  get "profile", to: "users#show"
  # get "search", to: "listings#index"
end
