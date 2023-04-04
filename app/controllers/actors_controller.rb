class ActorsController < ApplicationController
  def index
    @actors = Actor.order({ :created_at => :desc })

    render({ :template => "actor_templates/index.html.erb" })
  end

  def show
    @actor = Actor.where({ :id => params.fetch("id") }).at(0)

    render({ :template => "actor_templates/show.html.erb" })
  end
end
