RailsBlog::Application.routes.draw do

  resources :users
  resources :tags
  resources :posts
  resources :comments, only: :create

end
