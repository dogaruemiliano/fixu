class RemovePriceFromAppointements < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :price
  end
end
