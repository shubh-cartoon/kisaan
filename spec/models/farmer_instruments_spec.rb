require 'rails_helper'

RSpec.describe FarmerInstrument, type: :model do
	it 'should be successfully validated and inserted' do
		
		@farmer_obj = create(:farmer)
		
		@instrument_obj = create(:instrument)
		
		@farmer_instrument_obj = create(:farmer_instrument, farmer_id: @farmer_obj.id, instrument_id: @instrument_obj.id)
		
		expect(@farmer_instrument_obj.valid?).to eq true


		expect(@farmer_instrument_obj.farmer_name).to eq "#{@farmer_obj.full_name}"

		expect(@farmer_instrument_obj.instrument_name).to eq "#{@instrument_obj.name}"

	end
end