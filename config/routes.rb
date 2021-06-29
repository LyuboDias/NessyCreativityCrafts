Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'pages#site'
  get '/categories', to: 'categories#index'
  get '/contacts', to: 'pages#contacts'
  get '/about', to: 'pages#about'
  get '/terms', to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'
  get '/delivery', to: 'pages#delivery'
  get '/returns', to: 'pages#returns'
  get '/qanda', to: 'pages#qanda'
  get '/covid', to: 'pages#covid'
  get '/profile', to: 'pages#profile'
  get '/help', to: 'pages#help'
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

  resources :user_details, only: [:new, :create, :edit, :update, :destroy, :show]  

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end 
  