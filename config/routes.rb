Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/single_actor" => "actors#single_actor"
    get "/all_movies" => "movies#all_movies"
    get "/first_movie" => "movies#first_movie"
    get "/96_movie" => "movies#find_movie"
  end
end
