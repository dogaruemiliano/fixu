class CreateFixers < ActiveRecord::Migration[5.2]
  def change
    create_table :fixers do |t|
      t.references :user, foreign_key: true
      t.time :start_time
      t.time :end_time
      t.boolean :status, default: false
      t.integer :unit_price

      t.timestamps
    end
  end
end
