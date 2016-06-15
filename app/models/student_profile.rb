class StudentProfile < ApplicationRecord
  mount_uploader :profile_image, ProfileImageUploader
  belongs_to :user

  def self.search(search)
    if search
      find(:all, :conditions => ['categories LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
