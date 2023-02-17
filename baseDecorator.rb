require_relative 'nameable'
# ==x=====cx=====v==
class BaseDecorator < Nameable
    def initialize(nameable)
      @nameable = nameable
    end
  
    def correct_name
      @nameable.correct_name
    end
  end