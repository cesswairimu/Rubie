require 'sinatra'
require 'movies'
get ('/movies') do
  @movies = []

  @movies[0] = Movies.new
  @movies[0].title = "Saw"
  @movies[1]= Movies.new
  @movies[1].title = "Alien"
  @movies[2] = Movie.new
  @movies[2].title = "Young and Hungry"
  erb :index
  'Coming Soon'
end
