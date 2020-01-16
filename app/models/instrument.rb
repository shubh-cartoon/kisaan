class Instrument < ApplicationRecord
	has_many :farmer_instruments
	has_many :farmers, :through => :farmer_instruments
end
