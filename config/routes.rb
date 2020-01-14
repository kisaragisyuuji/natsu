Rails.application.routes.draw do
  devise_for :users
  resources :sweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  get '/top', to: "sweet#top"
  root to: 'sweets#top'
end
