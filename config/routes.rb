Rails.application.routes.draw do
  root to: "books#index"

  devise_for :users

  resources :books

  namespace :api do
    namespace :v1 do
      resources :ratings, only: [:new, :index, :update]
    end
  end
end
