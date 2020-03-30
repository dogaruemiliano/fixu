class AddCancelReasonToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :cancel_reason, :text
  end
end
