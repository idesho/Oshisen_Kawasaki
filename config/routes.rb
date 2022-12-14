Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "tops#index"
  resources :tops, only: [:index]
  resources :institutions
  resources :ofuros
  resources :users
  resources :users, only: [:show] do 
    get :favorites, on: :collection 
  end
  resources :sessions, only: %i[new create destroy]
  resources :favorites, only: [:create, :destroy]
end
