class Api::ActorsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @actors = Actor.all.order(age: :desc)
    render "index.json.jb"
  end

  def create
    @actor = Actor.new(first_name: params[:first_name], last_name: params[:last_name], known_for: params[:known_for], gender: params[:gender], age: params[:age], movie_id: params[:movie_id])
    if @actor.save
    render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    id = params[:id]
    @actor = Actor.find_by(id: id)
    render "show.json.jb"
  end

  def update
    id = params[:id]
    @actor = Actor.find_by(id: id)

    @actor.first_name = params[:first_name] || @actor.first_name 
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    @actor.movie_id = params[:movie_id || @actor.movie_id]
    if @actor.save
      render "show.json.jb"
    else
     render json: {errors: @actor.errors. full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy

    render json: {message: "Actor deleted"}
  end
end
