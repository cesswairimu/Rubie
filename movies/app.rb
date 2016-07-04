require 'sinatra'
require 'movie'
get ('/movies') do
  @movies = []

  @movies[0] = Movies.new
  @movies[0].title = "Saw"
  @movies[1]= Movies.new
  @movies[1].title = "Alien"
  @movies[2] = Movies.new
  @movies[2].title = "Young and Hungry"
  erb :index
  'Coming Soon'
end
get ('/movies/new') do
erb :new
end
post('/movies/create') do
  @movie = Movies.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']
end

