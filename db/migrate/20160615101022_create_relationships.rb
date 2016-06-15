class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :tutor_profile_id
      t.integer :student_profile_id
      t.boolean :tutor_approved
      t.boolean :student_approved

      t.timestamps
    end
  end
end
