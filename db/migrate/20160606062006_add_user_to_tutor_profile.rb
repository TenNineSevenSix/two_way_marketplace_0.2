class AddUserToTutorProfile < ActiveRecord::Migration[5.0]
  def change
    add_reference :tutor_profiles, :user, foreign_key: true
  end
end
