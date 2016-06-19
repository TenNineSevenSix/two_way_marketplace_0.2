class AddCompletedDateToHomeworks < ActiveRecord::Migration[5.0]
  def change
    add_column :homeworks, :completed_date, :date
  end
end
