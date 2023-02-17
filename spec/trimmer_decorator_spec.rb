require_relative '.././trimmer_decorator'

RSpec.describe TrimmerDecorator do
  describe 'here is the correctname' do
    let(:nameable) { double('Nameable', correct_name: 'osamas123456') }
    let(:decorator) { TrimmerDecorator.new(nameable) }

    context 'when the name is shorter than the maximum length' do
      let(:nameable) { double('Nameable', correct_name: 'John') }

      it 'this will returns the name un modify' do
        expect(decorator.correct_name).to eq('John')
      end
    end

    context 'while here the name is longer than the max length' do
      it 'trims the name to the max length' do
        expect(decorator.correct_name).to eq('osamas1234')
      end
    end

    context 'while here  the name is  the max length' do
      let(:nameable) { double('Nameable', correct_name: 'osamas1234') }

      it 'this will returns the name un modify' do
        expect(decorator.correct_name).to eq('osamas1234')
      end
    end

    it 'here calls the correct_name method of the nameable object' do
      expect(decorator.correct_name).to eq('osamas1234')
      expect(nameable).to have_received(:correct_name)
    end
  end
end
