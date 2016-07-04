require 'sinatra'
require 'movie'
require 'movie_store'

get ('/movies') do
  @movies = store.all
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
  store.save(@movie)
  redirect '/movies/new'
end
get ('/movies/:id') do
  "Received a request for movie ID: #{params['id']}"
end

