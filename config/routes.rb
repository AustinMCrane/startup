Rails.application.routes.draw do
  get 'plans/index'

  get 'plans/show'

  get 'plans/edit'

  get 'plans/subscribe'

  root 'home#index'
  resources :subscriptions
  # home page
  post '/beta_signup' => 'home#beta_signup'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :blogs
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
