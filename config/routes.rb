Rails.application.routes.draw do
  resources :subscriptions
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :blogs
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
