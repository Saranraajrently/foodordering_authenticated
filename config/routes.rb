Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :restaurant_admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: "home#home" 
  root "users#home"
  resources :user do
    resources :menu
    resources :cards
    resources :restaurant_admin
  end  
  # Defines the root path route ("/")
  # root "articles#index"
end
