Rails.application.routes.draw do
  resources :product_categories
  resources :products
  devise_for :users
  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'dashbord', to: 'home#dashbord'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
