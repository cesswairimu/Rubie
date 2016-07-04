require 'sinatra'
require 'yaml'

movie = Movie.new
movie.title = "Crazy"
movie.director = "Jame Fox"
movie.year =2014

puts YAML.dump(movie)

