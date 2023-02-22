require_relative '.././student'
require_relative '.././person'

describe Student do
  before :each do
    @student = Student.new(1, 22, 'Arabic', 'Osama', parent_permission: false)
  end

  it ' here the studente should be an instance of the Person' do
    @student.should be_a Person
  end

  it 'the student of  ids ought to be 1' do
    @student.id.should eq 1
  end

  it 'the student of age ought to 22' do
    @student.age.should eq 22
  end

  it 'the student of classroom ought to Arabic' do
    @student.classroom.label.should eql 'Arabic'
  end

  it 'the student of name ought to Osama' do
    @student.name.should eql 'Osama'
  end

  it 'the student of parent permissions ought to false' do
    @student.parent_permission.should eq false
  end

  it 'can_use_services? this should be return true' do
    @student.can_use_services?.should eq true
  end
end
