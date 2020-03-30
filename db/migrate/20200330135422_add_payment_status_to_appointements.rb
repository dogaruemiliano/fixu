class AddPaymentStatusToAppointements < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :payment_status, :string
  end
end
