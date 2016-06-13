class AddUserToStudentProfile < ActiveRecord::Migration[5.0]
  def change
    add_reference :student_profiles, :user, foreign_key: true
  end
end
