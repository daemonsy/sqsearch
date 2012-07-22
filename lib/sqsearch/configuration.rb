module Sqsearch
  class Configuration
    attr_accessor :min_chars, :max_no_of_records
    
    def min_chars=(val)
      raise(ArguementError, "min_chars cannot be 1 or less") if val < 2
    end
    
    def max_no_of_records=(val)
      raise(ArguementError, "Max records cannot be less less than 1 ") if val <1
    end
    
    def initialize
      @min_chars = 2
    end
    
  end
end