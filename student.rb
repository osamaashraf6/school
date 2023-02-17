# here is the calling of the classes
require_relative 'person'
require_relative 'classRoom'

class Student < Person
  attr_reader :classroom

  def initialize(id, age, classroom, name = 'unknown', parent_permission: true)
    super(id, age, name, parent_permission: parent_permission)
    @classroom = Classroom.new(classroom)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
