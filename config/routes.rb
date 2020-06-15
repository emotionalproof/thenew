Rails.application.routes.draw do
  resources :users, only:[:show, :new, :create, :edit, :update]
  resources :user_messages
  resources :user_categories
  resources :messages
  resources :follows
  resources :comments
  resources :categories, only:[:index, :show]
  resources :action_posts, only:[:index, :show, :new, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
