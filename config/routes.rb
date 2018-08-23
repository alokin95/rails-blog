Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :roles
  
  root to: 'posts#index'
  post '/get-filtered-posts', to: 'posts#filter'
  
  resources :posts

  resources :comments

  resources :categories

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
