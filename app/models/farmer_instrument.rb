class FarmerInstrument < ApplicationRecord
	belongs_to :farmer
	belongs_to :instrument

	has_many :rents
	has_many :borrowers, through: :rents, class_name: "Farmer", foreign_key: 'farmer_id'

end
