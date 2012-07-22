require "sqsearch/core_ext.rb"
require "sqsearch/search.rb"

module Sqsearch
  extend ActiveSupport::Concern # I do not have a full understanding of how ActiveSupport::Conern works. I really want my methods to be accessible to all classes inherited form ActiveRecord::Base
end
ActiveRecord::Base.send :include, Sqsearch