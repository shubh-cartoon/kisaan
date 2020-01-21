require 'rails_helper'

RSpec.describe Farmer, type: :model do
	it 'should be successfully validated and inserted' do
		
		@farmer_obj= create(:farmer)
		
		expect(@farmer_obj.valid?).to eq true		
		expect(@farmer_obj.save).to eq true
		expect(@farmer_obj.full_name).to eq "#{@farmer_obj.first_name} #{@farmer_obj.last_name}"
	end
end