#require '/home/hector/hack/retos/rails/disenando_apis/app/models/noticium.rb'

class ApiController < ApplicationController
	

	def all_notice
	notice1 = Mashable.new
	notice1.init
	render json: notice1.print
	# notice2 = Digg.new
	# notice3 = Reddit.new
	# mi_api = Mi_api.new 
	# mi_api.all_notice
		
	end
end
