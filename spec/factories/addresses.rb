FactoryBot.define do
	factory :address do
		line_1 {Faker::Address.street_address}
		line_2 {Faker::Address.street_name}
		city {Faker::Address.city}
		pincode {Faker::Address.postcode}
		state { Faker::Address.state }
		country { Faker::Address.country}
	end
end