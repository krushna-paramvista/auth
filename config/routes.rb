# Rails.application.routes.draw do
  
#   resources :product_categories
#   resources :products
#   resources :cart_items, only: [:index, :create, :destroy]
#   resources :orders, only: [:create] do
#     post 'place_order', on: :collection
#   end

#   # resources :users, only: [:index]
#   root 'home#homepage'
#   get  'homepage', to: 'home#homepage'
#   get  'dashbord', to: 'home#dashbord'
#   get  'users', to: 'users#index'
  
#   devise_for :users
          
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end

Rails.application.routes.draw do
  resources :product_categories
  resources :products
  resources :cart_items, only: [:index, :create, :destroy]
  resources :orders, only: [:index, :create, :show] do
    post 'place_order', on: :collection
  end
  
  # get 'admin/orders', to: 'admin#orders', as: 'admin_orders'
  # get 'admin/download_orders', to: 'admin#download_orders', as: 'download_orders_admin'


  post '/identity_verification', to: 'home#identity_verification'

  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'dashboard', to: 'home#dashboard'
  get 'users', to: 'users#index'

  post 'webhook', to: 'home#shopify_webhook'

  devise_for :users
end



