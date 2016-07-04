require 'movie'
require 'yaml/store'

store = YAML::Store.new('test.yaml')

first_movie = Movies.new
first_movie.title = "Aliens"
first_movie.director = "Dan Schdier"
first_movie.year = 2007

second_movie = Movies.new
second_movie.title = "Spongebob"
second_movie.director = ""
second_movie.year = 2005

store.transaction do
  store["Aliens"] = first_movie
  store["Spongebob"] = second_movie

  p store["Spongebob"]
end

