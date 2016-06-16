Rails.application.routes.draw do
  resources :products
  resources :users
  resources :categories

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'logout'  => 'sessions#destroy'

  namespace :admin do
    resources :products
    root :to => redirect('/admin/products')
  end

  root 'home#index'
end
