Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/users/me" => "users#show"
  patch "/users/me" => "users#update"
  delete "/users/me" => "users#destroy"

  get "/reviews" => "reviews#index"
  post "/reviews" => "reviews#create"
  get "/reviews/:id" => "reviews#show"
  patch "/reviews/:id" => "reviews#update"
  delete "/reviews/:id" => "reviews#destroy"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"

  get "/businesses" => "businesses#index"
  get "/businesses/:id" => "businesses#show"
end
