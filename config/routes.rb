Rails.application.routes.draw do
  
  resources :roles
  root to: 'posts#index'
  
  resources :posts do
    resources :comments
  end
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
