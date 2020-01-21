FactoryBot.define do
	factory :farmer_instrument do
		rent_per_hour { Faker::Number.number(digits: 3)}
		deposit { Faker::Number.number(digits: 4)}
		available_from { Faker::Date.backward(days: 14)}
		available_to { Faker::Date.forward(days: 23)}
		is_available { true }
	end
end