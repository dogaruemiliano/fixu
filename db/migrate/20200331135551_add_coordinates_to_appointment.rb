class AddCoordinatesToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :latitude, :float
    add_column :appointments, :longitude, :float
  end
end
