class AddProfileImageToStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :student_profiles, :profile_image, :string
  end
end
