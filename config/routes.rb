Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  
  get '/comments', to: "comments#index"
  get '/posts', to: "posts#index"
  get '/posts/:post_id', to: "posts#show"
  get '/posts/:post_id/comments', to: "posts#comments"
  get '/posts/:post_id/comments/:comment_id', to: "comments#show"
  get '/users', to: "users#index"
  get '/users/:user_id', to: "users#show"
  get '/users/:user_id/posts', to: "users#posts"
  get '/users/:user_id/posts/:post_id', to: "posts#show" 
  get '/users/:user_id/posts/:post_id/comments', to: "posts#comments"
  get '/users/:user_id/posts/:post_id/comments/:comment_id', to: "comments#show"

  post '/users', to: "users#create"
  post '/posts', to: "posts#create"
  post '/posts/comments', to: "comments#create"
  

  resources :sessions, only: [:new, :create, :destroy]

end
