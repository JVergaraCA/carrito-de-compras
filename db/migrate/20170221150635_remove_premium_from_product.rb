class RemovePremiumFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :premium, :string
  end
end
