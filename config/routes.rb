Rails.application.routes.draw do
  get 'selections/new'
  get 'selections/show'
  get 'selections/edit'
  devise_for :users
  root to: 'pages#home'
  get 'furnishers', to: 'pages#fournisseurs'
  get 'stocks', to: 'pages#stocks'
  get 'comptabilite', to: 'pages#comptabilite'
  resources :fournisseurs
  resources :selections do
      resources :products, only: [ :index, :show, :new, :create ]
  end
  resources :products, only: [ :edit, :update, :destroy]
    post 'products/:id/sold', to: "products#sold_status", as: "sold_status"
    post 'products/:id/sell', to: "products#tosell_status", as: "tosell_status"
    post 'products/:id/return', to: "products#return_status", as: "return_status"

  get 'products/:id/research', to: "products#research", as: "product_research"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
