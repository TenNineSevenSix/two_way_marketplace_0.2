class TutorProfile < ApplicationRecord
  belongs_to :user
  has_many :relationships
  has_many :student_profiles, through: :relationships
  has_many :homeworks
  
  mount_uploader :profile_image, ProfileImageUploader

  # def get_profile(id)
  #   @tutor_profile = TutorProfile.find_by(user_id: id)
  # end
end
