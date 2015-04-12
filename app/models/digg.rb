class Digg < ActiveRecord::Base

	def initialize
		@title = []
		@author = []
		@date = []
		@link = []
		@all = []
		notice = HTTParty.get('http://digg.com/api/news/popular.json')
		notice['data']['feed'].each do |feed|
			title = feed['content']['title_alt']
			@title.push(title)
			@all.push(title)
			author = feed['content']['author']
			@author.push(author)
			@all.push(author)
			date = Time.at(feed['date_published'])
			@date.push(date)
			@all.push(date)
			link = feed['content']['url']
			@link.push(link)
			@all.push(link)
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
end
