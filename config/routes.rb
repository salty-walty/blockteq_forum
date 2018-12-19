Rails.application.routes.draw do
  devise_for :users
  
  resources :comments
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'

  get 'categorical' => 'posts#posts_by_category'

  get  get '/:name' => 'posts#user_posts', as: :user_posts
end
