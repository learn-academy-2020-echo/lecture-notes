class Book
  attr_accessor :title, :author, :page
  def initialize(author='anonymous', page=1)
    @title = title
    @author = author
    @page = page
  end
  def read pages_read
    @page = @page + pages_read
  end
end


# Stories
# 1 - Create a book class
# 2 - Book can have a title
# 3 - Book can have an author, default be anonymous
# 4 - Book can have current page, default value of 1
# 5 - Book can be read a certain number of pages
