Rails.application.routes.draw do
  devise_for :users
  
  resources :sweets, only: [:index, :new, :create, :show, :edit, :update]
  get '/top', to: "sweet#top"
  root to: 'sweets#top'
end
