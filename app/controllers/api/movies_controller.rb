class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render "index.json.jb"
  end
  def create
    @movie = Movie.new(title: params[:title], year: params[:year], plot: params[:plot], english: params[:english], director: params[:director])
    @movie.save
    render "show.json.jb"
  end
  def show
    id = params[:id]
    @movie = Movie.find_by(id: id)
    render "show.json.jb"
  end

  def update
    id = params[:id]
    @movie = Movie.find_by(id: id)

    @movie.title = params[:title] || @movie.title 
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.english = params[:english] || @movie.english
    @movie.director = params[:director] || @movie.director
    @movie.save
    render "show.json.jb"
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy

    render json: {message: "Movie deleted"}
  end
end
