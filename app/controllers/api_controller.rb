#require '/home/hector/hack/retos/rails/disenando_apis/app/models/noticium.rb'

class ApiController < ApplicationController
	

	def mashable_titles
	notice1 = Mashable.new
	notice1.init
	render json: notice1.titles
	end
	
	def mashable_all
		notice1 = Mashable.new
		notice1.init
		render json: notice1.all
		
	end
end
