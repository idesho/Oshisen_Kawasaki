Rails.application.routes.draw do
  root "ofuros#index"
  resources :institutions
  resources :ofuros
  resources :users
  resources :sessions, only: %i[new create destroy]
end
