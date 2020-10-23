Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'fournisseurs', to: 'pages#fournisseurs'
  get 'stocks', to: 'pages#stocks'
  get 'comptabilite', to: 'pages#comptabilite'
  resources :fournisseurs

  resources :products
      get 'products/:id/research', to: "products#research", as: "product_research"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
