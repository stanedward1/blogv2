Rails.application.routes.draw do

  get 'pages/secret'
  get 'static_page/home'
  resources :tools
  get 'welcomes/index'
  get 'static_pages/help'
  get 'static_pages/home'
  resources :friendlinks
  resources :users
  get 'signup' => 'users#new'
  post 'users' => 'users#create'
  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  get '/logout' => 'sessions#destroy'
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
