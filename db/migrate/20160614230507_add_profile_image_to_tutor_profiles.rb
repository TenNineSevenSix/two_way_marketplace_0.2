class AddProfileImageToTutorProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :tutor_profiles, :profile_image, :string
  end
end
