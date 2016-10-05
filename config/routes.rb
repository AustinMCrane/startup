Rails.application.routes.draw do

  get 'plans' => 'plans#index'
  get 'plans/:id' => 'plans#show', as: :plan_path
  get 'plans/:id/edit' => 'plans#edit'
  post 'plans/:id/subscribe' => 'plans#subscribe', as: :subscribe_path
  root 'home#index'
  # home page
  post '/beta_signup' => 'home#beta_signup'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :blogs
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
