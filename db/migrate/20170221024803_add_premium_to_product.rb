class AddPremiumToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :premium, :string
    add_column :products, :boolean, :string
  end
end
