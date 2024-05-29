Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :blog_posts, only: [:index, :create, :update, :destroy]

  resources :users, only: [:index, :create, :update, :destroy]
  get "/users/:id", to:"users#find_by_id"

end
