# here i call the class BaseDecorator because the CapitalizeDecorator will inherit from it

require_relative 'base_decorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
# =================================================================
