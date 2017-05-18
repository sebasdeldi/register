Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  root to: "users#new"
  resources :users, only: [:new, :create]
  get 'users/authenticate'
  post 'users/authenticate', to: 'users#authenticate', as: 'auth'
end
