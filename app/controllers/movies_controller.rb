class MoviesController < ApplicationController
  def index

  end

  def new
    @movies = Movie.new
  end

  def create
    @movies = Movie.new (movie_params)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :director)
  end
end
