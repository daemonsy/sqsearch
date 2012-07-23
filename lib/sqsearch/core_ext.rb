module Sqsearch
  module ClassMethods
    def make_me_searchable(options = {})
      @fields = options[:fields]
      @fields = [@fields] unless @fields.is_a? Array
      raise(ArguementError, "the :key fields is required") if options[:fields].nil?
    end
  
    def search(query,options={})
      search_obj = Search.new(@fields)
      @fields.each do |field|
        search_obj.query_string << "#{field} like :query"
      end
      search_obj.results = where(search_obj.query_string.join(" OR "), {:query=>"%#{query}%"})
      search_obj
    end
  end
end

