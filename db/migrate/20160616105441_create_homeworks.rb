class CreateHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :homeworks do |t|
      t.string :question
      t.string :answer
      t.boolean :completed
      t.integer :result
      t.string :tutor_comments
      t.references :tutor_profile, foreign_key: true
      t.references :student_profile, foreign_key: true

      t.timestamps
    end
  end
end
