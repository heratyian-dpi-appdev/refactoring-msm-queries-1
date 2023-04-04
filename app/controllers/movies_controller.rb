class MoviesController < ApplicationController
  def index
    @movies = Movie.order({ :created_at => :desc })

    render({ :template => "movie_templates/index.html.erb" })
  end

  def show
    @movie = Movie.where({ :id => params.fetch("id") }).at(0)

    render({ :template => "movie_templates/show.html.erb" })
  end
end
