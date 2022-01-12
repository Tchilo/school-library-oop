require_relative('./book')
class BookStorage
  def initialize
    @books = []
  end

  def create_book
    print 'Title: '
    book_title = gets.chomp

    print 'Author: '
    book_author = gets.chomp

    puts 'Book created successfully!'

    book = Book.new(book_title, book_author)
    @books.push({
                  output: "Title: #{book.title}, Author: #{book.author}",
                  object: book
                })
  end

  def book_list
    @books.each do |book|
      puts book[:output]
      puts "\n"
    end
  end
end
