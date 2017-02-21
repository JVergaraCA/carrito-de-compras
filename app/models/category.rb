class Category < ApplicationRecord
	has_many :products, dependent: :destroy
  before_save :control_discount

  def control_discount
    if self.discount.nil?
      self.discount=0
    elsif self.discount<0
      self.discount=0
    elsif self.discount>100
      self.discount=100
    end
  end

end
