Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'categories#index'
  resources :categories, only: [:index] do
    resources :products, only: [:index] 
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'

  resources :purchases, only: [:show, :create] do
    resources :payments, only: :new
  end
end 
  