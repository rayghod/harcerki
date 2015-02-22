Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'

  devise_for :users
  
  scope "/admin" do
    resources :users
  end

  root :to => 'items#index'

  resources :items
  resources :users
  resources :roles
  resources :products, only: [:index]
  resources :order_items, only: [:create, :update, :destroy]
  resource :cart, only: [:show]
end
