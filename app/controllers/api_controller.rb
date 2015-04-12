#require '/home/hector/hack/retos/rails/disenando_apis/app/models/noticium.rb'

class ApiController < ApplicationController
	def initialize
		@notice1 = Mashable.new
		
	end

	def mashable_titles
		render json: @notice1.titles
	end

	def mashable_all
		render json: @notice1.all
	end

	def mashable_authors
		render json: @notice1.authors
	end

	def mashable_dates
		render json: @notice1.dates
	end

	def mashable_links
		render json: @notice1.links
	end


end
