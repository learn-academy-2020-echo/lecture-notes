class Library
  attr_accessor :book_collection
  def initialize
    @book_collection = []
  end
  def add_books book
    @book_collection << book
  end
end



# Stories
# 1 - Library is a thing
# 2 - Library is going to hold an Array of books, book_collection
# 3 - Library can have method that will add books to the book collection, add_books
