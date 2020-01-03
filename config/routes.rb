Rails.application.routes.draw do
  resources :sweets, only: index
    root to: 'sweets#index'
end
