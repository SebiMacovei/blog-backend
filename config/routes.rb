Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/posts", to:"blog_posts#index"
  post "/posts", to:"blog_posts#create"
  patch "/posts/:id", to:"blog_posts#update"
  delete "/posts/:id", to:"blog_posts#destroy"

  get "/users",to:"users#index"
  post "/users", to: "users#create"
  patch "/users/:id", to:"users#update"
  delete "/users/:id", to:"users#destroy"

  get "/users/:id", to:"users#find_by_id"

end
