class Api::MoviesController < ApplicationController
  def all_movies
    @movies = Movie.all
    render "all_movies.json.jb"
  end
  def first_movie
    @movie = Movie.first
    render "first_movie.json.jb"
  end
  def find_movie
    @movie = Movie.find_by(year: 1996)
    render "find_movie.json.jb"
  end
end
