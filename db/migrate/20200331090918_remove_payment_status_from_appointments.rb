class RemovePaymentStatusFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :payment_status
  end
end
