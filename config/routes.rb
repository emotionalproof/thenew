Rails.application.routes.draw do
  resources :users, only:[:show, :new, :edit, :update]
  resources :user_messages
  resources :user_categories, only:[:index, :show]
  resources :messages
  resources :follows
  resources :comments
  resources :action_posts, only:[:index, :show, :new, :create, :edit, :update, :destroy]

  get '/users/:id/', to "users"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
