class AddPriceToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_monetize :appointments, :price, currency: { present: false }
  end
end
