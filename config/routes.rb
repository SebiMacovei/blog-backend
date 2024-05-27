Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/posts", to:"blog_posts#index"
  post "/posts", to:"blog_posts#create"
  patch "/posts/:id", to:"blog_posts#update"
  delete "/posts/:id", to:"blog_posts#destroy"
end
