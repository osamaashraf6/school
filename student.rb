require_relative 'person'

class Student < Person
  attr_reader :classroom 

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'.encode('utf-8')
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self
  end
end