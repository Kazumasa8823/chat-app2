Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update]
  rresources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end