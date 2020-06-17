Rails.application.routes.draw do
  resources :users
  # resources :user_messages
  resources :user_categories
  # resources :messages
  resources :follows
  # resources :comments
  resources :categories
  resources :action_posts do
    resources :comments
  end
  resources :conversations do
    resources :messages
  end
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  delete "/sessions/logout", to: "sessions#logout", as: "logout"
  get "/sessions/new", to: "sessions#new", as: "new_login"
  post "/sessions", to: "sessions#create", as: "login"
  
  root 'welcome#home'
  
end
