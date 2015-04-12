#require '/home/hector/hack/retos/rails/disenando_apis/app/models/noticium.rb'

class ApiController < ApplicationController
	def initialize
		@mashable = Mashable.new
		@digg = Digg.new
		@reddit = Reddit.new
		@all = Todo.new
	end

#Mashable
	def mashable_titles
		render json: @mashable.titles
	end

	def mashable_all
		render json: @mashable.all
	end

	def mashable_authors
		render json: @mashable.authors
	end

	def mashable_dates
		render json: @mashable.dates
	end

	def mashable_links
		render json: @mashable.links
	end

#Digg
	def digg_titles
		render json: @digg.titles
	end

	def digg_authors
		render json: @digg.authors
	end

	def digg_dates
		render json: @digg.dates
	end

	def digg_links
		render json: @digg.links
	end

	def digg_all
		render json: @digg.all
	end

#Reddit	
	def reddit_all
		render json: @reddit.all
	end

	def reddit_titles
		render json: @reddit.titles
	end

	def reddit_authors
		render json: @reddit.authors
	end

	def reddit_dates
		render json: @reddit.dates
	end

	def reddit_links
		render json: @reddit.links
	end

	#All
	def all_all
		render json: @all.all
	end

	def all_titles
		render json: @all.titles		
	end

	def all_authors
		render json: @all.authors		
	end

	def all_dates
		render json: @all.dates
	end

	def all_links
		render json: @all.links
	end
end
