#require '/home/hector/hack/retos/rails/disenando_apis/app/models/noticium.rb'

class ApiController < ApplicationController
	def initialize
		@mashable = Mashable.new
		@digg = Digg.new
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
end
