require 'yaml/store'

class Book
  
  attr_accessor :title, :pages
end

book = Book.new
book.title = 'Marshall'
book.pages = 406

store = YAML::Store.new('books.yml')
store.transaction do
  store["MRSL"] = book
end

