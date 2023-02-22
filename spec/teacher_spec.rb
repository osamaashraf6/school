require_relative '.././teacher'
require_relative '.././person'

describe Teacher do
  before :each do
    @teacher = Teacher.new(1, 30, 'Drawing', 'osamaashraf')
  end

  it 'teacher should be an instance of Person' do
    @teacher.should be_a Person
  end

  it 'here the teacher of id should be 1' do
    @teacher.id.should eq 1
  end

  it 'here the teacher of age should be 30' do
    @teacher.age.should eq 30
  end

  it 'here the teacher of specialization should be Drawing' do
    @teacher.specialization.should eql 'Drawing'
  end

  it 'here the teacher of name should be osamaashraf' do
    @teacher.name.should eql 'osamaashraf'
  end

  it 'can_use_services? should return true' do
    @teacher.can_use_services?.should eq true
  end
end
