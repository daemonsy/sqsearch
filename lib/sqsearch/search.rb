module Sqsearch
  class Search
    attr_accessor :results
    
    def initialize(fields, options={})
      # Initializer with defaults
      @fields = fields 
      @results = Array.new
       @options = {
          :offset => 0,
          :page => 1,
          :limit => 30,
          :min_chars => 2
        }.reverse_merge! options
    end
    
  end
end