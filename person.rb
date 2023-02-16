class Person
    attr_reader :id
    attr_accessor :name, :age
    
    def initialize(age, parent_permission=true, name="Unknown")
      @id = rand(1..1000) # Generate a random ID between 1 and 1000
      @name = name
      @age = age
      @parent_permission = parent_permission
    end
    
    def is_of_age?
      @age >= 18
    end
    
    def can_use_services?
      is_of_age? || @parent_permission
    end
  end
  