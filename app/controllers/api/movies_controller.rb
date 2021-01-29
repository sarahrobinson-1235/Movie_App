class Api::MoviesController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @movies = Movie.where(english: true)
    render "index.json.jb"
  end
  def create
    @movie = Movie.new(title: params[:title], year: params[:year], plot: params[:plot], english: params[:english], director: params[:director])
    if @movie.save
    render "show.json.jb"
    else
      render json: {message: @movie.errors.full_messages}, status: :unprocessable_entity
    end
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
    if @movie.save
    render "show.json.jb"
    else
      render json: {message: @movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy

    render json: {message: "Movie deleted"}
  end
end
