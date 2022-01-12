require_relative('./app')

def main
  app = App.new
  # sleep 2
  puts 'Welcome to the School Library App!'
  puts "\n"
  loop do
    puts 'Please choose an option by entering a number: '

    @content = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person id',
      '7' => 'Exit'
    }

    @content.each do |index, string|
      puts "#{index} - #{string}"
    end

    num = Integer(gets.chomp)
    break if num == 7

    app.home_page(num)
  end
  puts 'Thanks for using the app!'
end

main
