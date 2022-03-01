Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  post "/reviews" => "reviews#create"
  patch "/reviews/:id" => "reviews#update"
  delete "/reviews/:id" => "reviews#destroy"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"

  get "/businesses" => "businesses#index"
  get "/businesses/:id" => "businesses#show"
end
