class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.references :problem, foreign_key: true
      t.references :fixer, foreign_key: true

      t.timestamps
    end
  end
end
