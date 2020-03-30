class ChangeTypeOfSessionIdToString < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :checkout_session_id, :string
  end
end
