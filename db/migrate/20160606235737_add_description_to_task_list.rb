class AddDescriptionToTaskList < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'hstore'
    add_column :task_lists, :description, :hstore, default: {}, null: false
  end
end
