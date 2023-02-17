require_relative '.././person'

RSpec.describe Person do
  describe 'is this it of_age?' do
    it 'this will returns true if the persone is 18 or older than that' do
      person = Person.new(1, 20, 'osama')
      expect(person.send(:of_age?)).to eq(true)
    end

    it 'this will returns false if the person is younger than 18 year' do
      person = Person.new(1, 10, 'ashraf')
      expect(person.send(:of_age?)).to eq(false)
    end
  end

  describe '#can_use_services?' do
    it 'this will returns true if the person is 18 or older that that' do
      person = Person.new(1, 24, 'osama')
      expect(person.can_use_services?).to eq(true)
    end

    it 'this will returns true if the person is younger than 18 but this has parent permission' do
      person = Person.new(1, 9, 'ashraf', parent_permission: true)
      expect(person.can_use_services?).to eq(true)
    end

    it 'this will returns false if the person are younger than 18 and doe not have his parentes permission' do
      person = Person.new(1, 14, 'ashraf', parent_permission: false)
      expect(person.can_use_services?).to eq(false)
    end
  end
end
