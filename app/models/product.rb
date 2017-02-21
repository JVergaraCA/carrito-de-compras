class Product < ApplicationRecord
 	scope :all_premium, -> { where(premium: true) }
 	scope :last_n, ->(n) {limit(n)}

	belongs_to :category
	validates :cost, presence: true
	before_save :default_value

	def default_value
		if self.premium!=true 
			self.premium=false
		end
	end

end
	