class RemoveProfileImagesFromStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :student_profiles, :profile_images, :string
  end
end
