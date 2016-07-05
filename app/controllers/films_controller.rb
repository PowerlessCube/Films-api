class FilmsController < ApplicationController

  def index
    films = Film.all
    render(json: films.as_json({ :include => [ :actors, :director ] }))
    # render(json: films.director)
  end



end
