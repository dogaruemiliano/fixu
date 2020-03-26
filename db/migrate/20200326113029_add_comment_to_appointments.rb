class AddCommentToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :comment, :text
  end
end
