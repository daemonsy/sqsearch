module Sqsearch
  class Search
    attr_accessor :results, :query_string
    
    def initialize(fields, options={})
      # Initializer with defaults
      @fields = fields 
       @options = {
          :offset => 0,
          :page => 1,
          :limit => 30,
          :order => "DESC"
        }.reverse_merge! options
        @query_string = Array.new
    end
    
  end
end