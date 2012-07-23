Sqsearch
========
An gem that allows you to search any ActiveRecord model by plugging-it-in. 

	class Bookmark < ActiveRecord::Base
		make_me_searchable :fields => [:name,:description, :full_url] 
	end
	
No other options is available at this point of time.

To search, use `Class.search("My query")`. This searches using SQL LIKE %'query'% chained together by OR. 

The search results is an AR relation so it can be further chained with things like will_paginate `Bookmark.search("hello").results.paginate(:page=>params[:page])`

Next Up
========
* Be able to choose what you want to search using keywords like AND / OR
* Make the `make_me_searchable` method accept a Proc for determining if a particular record should be searched. 
* Ordering of records 