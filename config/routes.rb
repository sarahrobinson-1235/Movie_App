Rails.application.routes.draw do

  namespace :api do
    get "/actors" => "actors#index"
    get "/movies" => "movies#index"
    post "/actors" => "actors#create"
    post "/movies" => "movies#create"
    get "/actors/:id" => "actors#show"
    get "/movies/:id" => "movies#show"
    patch "actors/:id" => "actors#update"
    patch "movies/:id" => "movies#update"
    delete "actors/:id" => "actors#destroy"
    delete "movies/:id" => "movies#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
