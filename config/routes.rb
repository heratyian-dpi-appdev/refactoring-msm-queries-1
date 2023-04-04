Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })

  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/:id", { :controller => "movies", :action => "show" })

  get("/directors/:id", { :controller => "directors", :action => "show" })

  get("/actors", { :controller => "actors", :action => "index" })

  get("/actors/:id", { :controller => "actors", :action => "show" })
end
