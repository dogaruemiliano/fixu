class ChangeContentToBeStringInProblems < ActiveRecord::Migration[5.2]
  def change
    change_column :problems, :content, :string
  end
end
