Rails.application.routes.draw do
  devise_for :users
  
  resources :sweets, only: [:index]
  root to: 'sweets#index'
end
