class CreateSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :specialities do |t|
      t.references :fixer, foreign_key: true
      t.references :problem, foreign_key: true

      t.timestamps
    end
  end
end
