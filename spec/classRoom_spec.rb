require_relative '.././classRoom'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Thermal')
  end

  it 'classroom label should be the name Thermal' do
    @classroom.label.should eql 'Thermal'
  end
end
