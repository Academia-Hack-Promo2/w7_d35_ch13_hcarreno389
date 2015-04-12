class Mashable < ActiveRecord::Base
	#include colorize
	def init
		@title = []
		@author = []
		@date = []
		@link = []
		@all = []
		notice = HTTParty.get('http://mashable.com/stories.json/')
		notice["hot"].each do |feed|
			title = feed['title']
			@title.push(title)
			@all.push(title)
			author = feed['author'] 
			@author.push(author)
			@all.push(author) 
			date = feed['post_date']
			@date.push(date)
			@all.push(date)
			link = feed['link'] 
			@link.push(link)
			@all.push(link)
		end
	end
	def titles
		@title
	end
	def authors
		@author
	end
	def dates
		@date
	end
	def links
		@link
	end
	def all
		@all
		
	end
end
