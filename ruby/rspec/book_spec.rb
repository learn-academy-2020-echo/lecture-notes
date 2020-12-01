require 'rspec'
require_relative 'book'
require_relative 'library'

describe 'Book' do

  # does the class exist?
  it 'has to be real' do
    expect{ Book.new }.to_not raise_error
  end

  # getter and setter for title
  it 'has a title' do
    my_book = Book.new
    my_book.title = 'Catch-22'
    expect(my_book.title).to eq 'Catch-22'
  end

  # getter and setter for author, default is anonymous
  it 'has an author' do
    my_book = Book.new
    expect(my_book.author).to eq 'anonymous'
    catch = Book.new 'Joseph Heller'
    expect(catch.author).to eq 'Joseph Heller'
  end

  # getter and setter for page, default value is 1
  it 'can have a current page' do
    my_book = Book.new
    expect(my_book.page).to eq 1
  end

  it 'can read pages' do
    my_book = Book.new
    expect{ my_book.read 8 }.to change{ my_book.page }.from(1).to(9)
    expect{ my_book.read 10 }.to change{ my_book.page }.from(9).to(19)
    expect{ my_book.read 10 }.to change{ my_book.page }.from(19).to(29)
  end

end

describe 'Library' do

  it 'has to be real' do
    expect{ Library.new }.to_not raise_error
  end

  it 'has a book collection that is an array' do
    my_library = Library.new
    expect(my_library.book_collection).to be_a Array
  end

  it 'has an array of books' do
    my_book1 = Book.new
    my_book2 = Book.new
    my_library = Library.new
    my_library.add_books my_book1
    my_library.add_books my_book2
    expect(my_library.book_collection).not_to be_empty
  end

end
