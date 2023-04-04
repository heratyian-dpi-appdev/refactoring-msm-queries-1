class DirectorsController < ApplicationController
  def index
    @directors = Director.all.order({ :created_at => :desc })

    render({ :template => "director_templates/index.html.erb" })
  end

  def show
    @director = Director.where({ :id => params.fetch("id") }).at(0)

    render({ :template => "director_templates/show.html.erb" })
  end

  def max_dob
    @youngest = Director.youngest
    render({ :template => "director_templates/youngest" })
  end

  def min_dob
    @eldest = Director.eldest
    render({ :template => "director_templates/eldest" })
  end
end
