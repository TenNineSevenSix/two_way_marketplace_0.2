class AddDueDateToHomeworks < ActiveRecord::Migration[5.0]
  def change
    add_column :homeworks, :due_date, :date
  end
end
