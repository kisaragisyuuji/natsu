Rails.application.routes.draw do
  devise_for :users
  
  resources :sweets
  get '/top', to: "sweet#top"
  root to: 'sweets#top'
end
