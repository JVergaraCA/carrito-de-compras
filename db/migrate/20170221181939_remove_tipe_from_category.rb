class RemoveTipeFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :type, :integer
  end
end
