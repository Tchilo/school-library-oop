require_relative('./person_storage')
require_relative('./book_storage')
require_relative('./rental')
require_relative('./teacher')

class App
  def initialize
    @person_storage = PersonStorage.new
    @books_storage = BookStorage.new
    @rental_array = []
  end

  def home_page(num)
    case num
    when 1
      @books_storage.book_list
    when 2
      @person_storage.people_list
    when 3
      @person_storage.create_person
    when 4
      @books_storage.create_book
    when 5
      create_rental
    when 6
      rental_list
    else
      puts 'Choose a number between 1 to 7'
    end
  end

  private

  def create_rental
    puts 'Select a book from the following list by number: '
    @books_storage.book_list.each_with_index do |book, index|
      puts "#{index}) #{book[:output]}"
    end
    book_selected = Integer(gets.chomp)
    book_chosen = @books_storage.book_list[book_selected][:object]

    puts 'Select a person from the following list by number (not id): '
    @person_storage.people_list.each_with_index do |person, index|
      puts "#{index}) #{person[:output]}"
    end
    person_selected = Integer(gets.chomp)
    person_chosen = @person_storage.people_list[person_selected][:object]

    print 'Date: '
    rental_date = gets.chomp
    puts 'the rental has been successfully'
    @rental_array.push(Rental.new(rental_date, book_chosen, person_chosen))
  end

  def rental_list
    print 'ID of person: '
    person_id = Integer(gets.chomp)
    puts 'Rental: '

    @rental_array.each do |rental|
      if person_id == rental.person.id
        puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
      else
        puts 'ID does not exist'
      end
    end
  end
end
