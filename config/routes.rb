Rails.application.routes.draw do


  resources :theatres

  get 'theatre/index'

  post '/rate' => 'rater#create', :as => 'rate'


  devise_for :users

  scope "/admin" do
    resources :users
  end

  root :to => 'welcome#index'

  resources :orders
  resources :items
  resources :users
  resources :roles
  resources :products, only: [:index]
  resources :theatres


end
