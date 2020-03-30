class RemoveUnitPriceFromFixer < ActiveRecord::Migration[5.2]
  def change
    remove_column :fixers, :unit_price, :integer
  end
end
