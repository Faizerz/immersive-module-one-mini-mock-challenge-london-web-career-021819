require 'pry'
require_relative './book'
require_relative './author'

fez = Author.new('Fez')
khang = Author.new('Khang')

book1 = Book.new(fez, 'Yo Mama', 100)
book1 = Book.new(fez, 'Digme', 200)
book1 = Book.new(fez, 'Poppy', 300)
book1 = Book.new(khang, 'Juplo', 400)
book1 = Book.new(khang, 'Plagerised', 500)



binding.pry
"yo"
