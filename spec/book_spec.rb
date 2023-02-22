require_relative '.././book'

RSpec.describe Book do
  let(:book) { Book.new('The 47 down meter', 'osama ashraf') }

  describe 'here is the title' do
    it 'this will return] the title of the book' do
      expect(book.title).to eq('The 47 down meter')
    end
  end

  describe 'here is the author' do
    it 'this will return the author of the book' do
      expect(book.author).to eq('osama ashraf')
    end
  end

  describe 'here is the title=' do
    it 'here assign  the title of the book' do
      book.title = 'at the water'
      expect(book.title).to eq('at the water')
    end
  end

  describe 'here is the author=' do
    it 'here assign  the author of the book' do
      book.author = 'salem'
      expect(book.author).to eq('salem')
    end
  end
end
