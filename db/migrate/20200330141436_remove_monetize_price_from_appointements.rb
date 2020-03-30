class RemoveMonetizePriceFromAppointements < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :price_cents
  end
end
