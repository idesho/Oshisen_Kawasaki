Rails.application.routes.draw do
  root "ofuros#top"
  
  get "/admin", to: "application#check"
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  post '/guest', to: 'guest_sessions#create'
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
