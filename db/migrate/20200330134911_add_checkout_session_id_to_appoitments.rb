class AddCheckoutSessionIdToAppoitments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :checkout_session_id, :integer
  end
end
