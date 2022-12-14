Rails.application.routes.draw do
  root "ofuros#top"
  
  mount RailsAdmin::Engine => '/admins', as: 'rails_admin'
  post '/guest', to: 'guest_sessions#create'
  post '/guest_admin', to: 'guest_sessions#create_admin'

  resources :ofuros do
    collection do
      get 'search'
    end
  end
  resources :wards
  resources :tops, only: [:index]
  resources :institutions
  resources :ofuros
  resources :users
  resources :users, only: [:show] do 
    get :favorites, on: :collection 
  end
  resources :sessions, only: %i[new create destroy]
  resources :favorites, only: [:create, :destroy]
  # resources :ofuros do
  #   collection do
  #     get 'search'
  #   end
  # end
end
