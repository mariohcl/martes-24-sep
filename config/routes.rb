Rails.application.routes.draw do

  root to: 'users#index'

  get 'users/sign_up', to: "users#new"
  get 'users/sign_in', to: "sessions#new"

  post 'users', to: "users#create"

  get '/', to: "users#index"

  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
