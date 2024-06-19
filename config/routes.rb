Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  # Defines the root path route ("/")
  # root "articles#index"
  resources :blog_posts, only: [:index, :create, :update, :destroy]
  get "/blog_posts/:id", to:"blog_posts#find_by_id"
  resources :users, only: [:index, :create, :update, :destroy]
  get "/users/:id", to:"users#find_by_id"
  resources :comments, only: [:create, :update, :destroy]



end
