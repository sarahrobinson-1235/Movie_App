Rails.application.routes.draw do

  namespace :api do
    get "/single_actor" => "actors#single_actor"
    get "/all_movies" => "movies#all_movies"
    get "/first_movie" => "movies#first_movie"
    get "/96_movie" => "movies#find_movie"
    get "find_id_query" => "movies#query_params"
    get "find_id_segment/:id" => "movies#query_params"
  end
end
