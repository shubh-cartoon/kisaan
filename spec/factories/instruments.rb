FactoryBot.define do
	factory :instrument do
		name {Faker::Vehicle.make_and_model}
		brand {Faker::Vehicle.manufacture}
		specifications {Faker::Vehicle.standard_specs}
	end
end