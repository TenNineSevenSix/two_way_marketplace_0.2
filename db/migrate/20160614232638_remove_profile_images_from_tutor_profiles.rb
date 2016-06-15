class RemoveProfileImagesFromTutorProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :tutor_profiles, :profile_images, :string
  end
end
