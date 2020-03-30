class AddAmountToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_monetize :appointments, :amount, currency: { present: false }
  end
end
