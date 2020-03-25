class AddDurationToProblems < ActiveRecord::Migration[5.2]
  def change
    add_column :problems, :duration, :integer
  end
end
