class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.references :fixer, foreign_key: true
      t.references :user, foreign_key: true
      t.references :problem, foreign_key: true
      t.string :status
      t.integer :price

      t.timestamps
    end
  end
end
