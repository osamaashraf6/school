require_relative 'nameable'

class Person < Nameable
  attr_reader :id, :age
  attr_accessor :name

  def initialize(age, parent_permission=true, name="Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def is_of_age?
    @age >= 18
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end

  def correct_name
    @name
  end
end


