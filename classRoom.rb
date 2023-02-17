# class Classroom
#   attr_accessor :label, fdfdf

#   def initialize(label)
#     @label = label
#     @students = []

class Classroom
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end
end
