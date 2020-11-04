Rails.application.routes.draw do
  get 'clothes/index'
  get 'clothes/new'
  get 'clothes/create'
  get 'clothes/edit'
  get 'clothes/update'
  get 'clothes/destroy'
  get 'brands/index'
  get 'brands/new'
  get 'brands/create'
  get 'brands/edit'
  get 'brands/update'
  get 'brands/destroy'
  get 'paiements/index'
  get 'paiements/new'
  get 'paiements/create'
  get 'paiements/show'
  get 'paiements/edit'
  get 'paiements/update'
  get 'selections/new'
  get 'selections/show'
  get 'selections/edit'
  devise_for :users
  root to: 'pages#home'
  get 'furnishers', to: 'pages#fournisseurs'
  get 'stocks', to: 'pages#stocks'
  get 'comptabilite', to: 'pages#comptabilite'
  resources :fournisseurs do
    resources :paiements, only: [ :index, :show, :new, :create ]
  end
  resources :selections do
      resources :products, only: [ :index, :show, :new, :create ]
  end
  resources :products, only: [ :edit, :update, :destroy]
    post 'products/:id/sold', to: "products#sold_status", as: "sold_status"
    post 'products/:id/sell', to: "products#tosell_status", as: "tosell_status"
    post 'products/:id/return', to: "products#return_status", as: "return_status"
  resources :paiements, only: [ :edit, :update, :destroy]
    post 'paiements/:id/settle', to: "paiements#settle_status", as: "settle_status"
  get 'products/:id/research', to: "products#research", as: "product_research"

  resources :brands
  resources :clothes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
