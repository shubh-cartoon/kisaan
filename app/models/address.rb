class Address < ApplicationRecord
	belongs_to :farmer

	def full_address
		self.line_1.to_s + ', '+ self.line_2.to_s + ', '+ self.city.to_s + ', ' + self.pincode.to_s
	end
end
