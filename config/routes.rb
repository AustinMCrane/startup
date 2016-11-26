Rails.application.routes.draw do

  # plan that can be subscribed to
  root 'home#index'
  # home page
  post '/beta_signup' => 'home#beta_signup'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :blogs
  get '/products/:id', to: 'products#show', as: 'product'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
