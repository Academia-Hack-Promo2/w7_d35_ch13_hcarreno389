class Mashable < ActiveRecord::Base
	#include colorize
	def init
		@title = []
		@author = []
		@date = []
		@link = []
		notice = HTTParty.get('http://mashable.com/stories.json/')
		notice["hot"].each do |feed|
			title = feed['title']
			@title.push(title)
			author = feed['author'] 
			@author.push(author) 
			date = feed['date']
			@date.push(date)
			link = feed['link'] 
			@link.push(link)
		end
	end
	def print
		@title
		@author
		@date
		@link 
		 
	end
end
