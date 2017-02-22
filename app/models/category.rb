class Category < ApplicationRecord
	has_many :products, dependent: :destroy #Siempre el borrado cascada lo lleva has_many
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

  # validate :discount_valid

  # def discount_valid
  #   if self.discount < 0 || self.discount > 100
  #     errors.add(:discount, "El discount debe ser superior a 0 y menor a 100")
  # end

end
