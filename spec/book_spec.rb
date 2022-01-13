require_relative '../book'

describe Book do
  context 'testing a book class' do
    it 'should create new book instance correctly' do
      book = Book.new( 'spider-man no way home', 'lumato')
      expect(book.title).to eq 'spider-man no way home'
      expect(book.author).to eq 'lumato'
    end
  end
end
