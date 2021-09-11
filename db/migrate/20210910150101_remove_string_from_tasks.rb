class RemoveStringFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :string, :string
    change_column :tasks, :title, :string, null: false
  end
end
