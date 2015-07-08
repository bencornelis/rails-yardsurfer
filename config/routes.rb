Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "listings#index"
  resources :users
  resources :listings do
    resources :reviews
  end
end
