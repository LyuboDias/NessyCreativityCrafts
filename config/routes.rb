Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'categories#index'
  resources :categories, only: [:index] do
    resources :products, only: [:index] 
  end
end
  