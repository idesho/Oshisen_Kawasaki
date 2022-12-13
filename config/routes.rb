Rails.application.routes.draw do
  resources :institutions
  resources :ofuros
  resources :users
  resources :sessions, only: %i[new create destroy]
end
