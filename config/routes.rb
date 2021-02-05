Rails.application.routes.draw do

  resources :comments
  resources :friendlinks
  resources :users
  resources :blogs

  namespace :admin do
    root to: "blogs#index",as: "root"
    resources :users
    resources :blogs
    resources :comments
    resources :friendlinks
  end

  root to: "blogs#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
