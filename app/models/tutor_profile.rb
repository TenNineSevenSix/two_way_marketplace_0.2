class TutorProfile < ApplicationRecord
  belongs_to :user

  # def get_profile(id)
  #   @tutor_profile = TutorProfile.find_by(user_id: id)
  # end
end
