Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :action_posts, only:[:index, :show, :new, :create, :edit, :update, :destroy]
end
