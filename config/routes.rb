Rails.application.routes.draw do

  get 'welcomes/index'
  resources :friendlinks
  resources :users
  resources :blogs do
    resources :comments
  end

  namespace :admin do
    root to: "blogs#index",as: "root"
    resources :users
    resources :blogs do
      resources :comments
    end
    resources :friendlinks
  end


  root to: "blogs#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
