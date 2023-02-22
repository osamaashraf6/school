require_relative '.././capitalize_decorator'
# ======ds===========fd===========

RSpec.describe CapitalizeDecorator do
  let(:nameable) { double('nameable', correct_name: 'osama ashraf') }
  subject { described_class.new(nameable) }

  describe 'here correct_name of me' do
    it 'here capitalizes the name of osama' do
      expect(subject.correct_name).to eq('Osama ashraf')
    end
  end
end
