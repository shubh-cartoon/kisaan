class FarmerInstrumentsController < ApplicationController
	def index
		@ads = FarmerInstrument.all.includes(:farmer, :instrument)
		@query= Farmer.all.order(:first_name, :last_name)
	end
	def show
		@specadd = FarmerInstrument.find(params[:id])
		
	end
end
