class AddColumnAddressToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :address, :string
  end
end
