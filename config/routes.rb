Rails.application.routes.draw do
  resources :taggings
  resources :posts
  resources :categories
  resources :tags
  resources :users

  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
