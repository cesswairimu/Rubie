require 'yaml/store'
class Book
  attr_accessor :title, :author, :genre

  def initialize(title, author,genre)
    @title = title
    @author = author
    @genre = genre
  end
end
puts "To add a new book?"
puts "Enter the book's title"
input = gets
title = input.chomp


puts "Enter the book's author"
input = gets
author = input.chomp

puts "Enter the book's genre"
input = gets
genre = input.chomp

book = [Book.new(title,  author, genre)]

store = YAML::Store.new "book.store"

store.transaction do
  store[title] = book
end
