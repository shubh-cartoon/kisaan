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

	def edit
		@farmer_instrument=FarmerInstrument.find(params[:id])
	end

	def update
		@farmer_instrument_rec=FarmerInstrument.find(params[:id])
		@farmer_instrument_rec.update(rent_per_hour: params[:farmer_instrument][:rent_per_hour], deposit: params[:farmer_instrument][:deposit], is_available: params[:farmer_instrument][:is_available], available_from: params[:farmer_instrument][:available_from], available_to: params[:farmer_instrument][:available_to])
		redirect_to farmer_instrument_path(@farmer_instrument_rec)
	end

	def destroy
		@delete_record=FarmerInstrument.find(params[:id]).destroy
		redirect_to farmer_instruments_path
	end

	private
	def permit_params
		params[:farmer_instrument].permit(:farmer_id, :instrument_id, :rent_per_hour, :deposit, :available_from, :available_to, :is_available)
	end

end
