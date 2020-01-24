require 'rails_helper'

RSpec.describe FarmerInstrumentsController, type: :controller do
	before(:each) do
  		@farmer_obj = create(:farmer)
		@instrument_obj = create(:instrument)
		@farmer_instrument_obj = create(:farmer_instrument, farmer_id: @farmer_obj.id, instrument_id: @instrument_obj.id)
		
	end
	
	it 'render index template' do
		
		get :index
		expect(response).to have_http_status(:success)

	end

	it 'render show template' do
		params = {id: @farmer_instrument_obj.id}
		get :show,  params: params
		expect(response).to have_http_status(:success)
	end

	it 'render edit template' do
		params = {id: @farmer_instrument_obj.id}
		get :edit,  params: params
		expect(response).to have_http_status(:success)
	end

	it 'render new template' do
		get :new
		expect(response).to have_http_status(:success)
	end

	it "redirects to farmer_instrument#index" do
    	params = {id: @farmer_instrument_obj.id}
		delete :destroy,  params: params
		response.should redirect_to farmer_instruments_url
  	end

  	it "POST #create" do
  		
  	end
end