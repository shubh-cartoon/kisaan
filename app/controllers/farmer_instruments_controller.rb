class FarmerInstrumentsController < ApplicationController
	def index
		@ads = FarmerInstrument.all.includes(:farmer, :instrument)
		@query= Farmer.all.order(:first_name, :last_name)
	end
	def show
		@specadd = FarmerInstrument.find(params[:id])
		
	end

	def new
		@farmer_list=Farmer.all.collect{|f| [f.first_name, f.id]}
		@instrument_list =Instrument.all.collect{|i| [i.name, i.id]}
	end

	def create

		@advertise = FarmerInstrument.create(permit_params)
		redirect_to farmer_instrument_path(@advertise)
	end

	private
	def permit_params
		params[:farmer_instrument].permit(:farmer_id, :instrument_id, :rent_per_hour, :deposit, :available_from, :available_to, :is_available)
	end

end
