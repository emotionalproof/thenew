Rails.application.routes.draw do
  resources :users
  resources :user_messages
  resources :user_categories
  resources :messages
  resources :follows
  resources :comments
  resources :categories
  resources :action_posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :action_posts, only:[:index, :show, :new, :create, :edit, :update, :destroy]
end
