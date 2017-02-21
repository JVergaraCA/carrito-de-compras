class Product < ApplicationRecord
	belongs_to :category
	validates :cost, presence: true
	before_save :default_value
	after_destroy :destroy_category


 	scope :all_premium, -> { where(premium: true) }
 	scope :last_n, ->(n) {limit(n)}

	def default_value
		if self.premium!=true 
			self.premium=false
		end
	end
#unless self.premium.present? || self.premium==true


	def destroy_category
		Category.all.each do |i|
			unless i.products.any?
				i.destroy
			end
		end
  	end


  	 def precio_final
  	 	disc=(self.category.discount * self.cost)/100
  	 	self.cost-disc
  	 end



end
	