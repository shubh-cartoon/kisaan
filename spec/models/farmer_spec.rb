require 'rails_helper'

RSpec.describe Farmer, type: :model do
	before(:each) do
		@farmer_obj= create(:farmer)
	end
	it 'should be successfully validated' do
		expect(@farmer_obj.valid?).to eq true		
	end

	it 'should be successfully inserted' do
		expect(@farmer_obj.save).to eq true
	end

	it 'should call full_name method and return first_name last_name' do
		expect(@farmer_obj.full_name).to eq "#{@farmer_obj.first_name} #{@farmer_obj.last_name}"
	end

	it 'should not save without valid mobile number' do
		@farmer_obj = build(:farmer, mobile_no: nil)
		expect(@farmer_obj.valid?).to eq false
	end
end