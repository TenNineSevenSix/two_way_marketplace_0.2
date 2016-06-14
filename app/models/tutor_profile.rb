class TutorProfile < ApplicationRecord
  belongs_to :user
  mount_uploader :profile_image, ProfileImageUploader

  # def get_profile(id)
  #   @tutor_profile = TutorProfile.find_by(user_id: id)
  # end
end
