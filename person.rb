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
    @age.to_i >= 18
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end


  def rent_book(book, date)
    rental = Rental.new(self, book, date)
    @rentals << rental
    book.rentals << rental
    rental
  end

  def return_book(rental, date)
    rental.return_date = date
  end

  def rented_books
    @rentals.map { |rental| rental.book }
  end

  def late_rentals
    @rentals.select { |rental| rental.return_date.nil? && Date.today > rental.date + 7 }
  end
end

