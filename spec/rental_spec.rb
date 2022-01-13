require_relative '../rental'
require_relative '../book'


describe Rental do
  context 'When providing a book and a person' do
    person = Person.new(id: nil, age:20, name: 'Luke', parent_permission: true)
    book = Book.new('Habits', 'James')
    rented = Rental.new('01-02-2022', book, person)

    it 'Should create rental for person' do
      expect(person.rentals).to include(rented)
    end
  end
end