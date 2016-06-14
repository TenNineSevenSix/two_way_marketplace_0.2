class StudentProfile < ApplicationRecord
  belongs_to :user
  mount_uploader :profile_image, ProfileImageUploader

  def self.search(search)
    if search
      find(:all, :conditions => ['categories LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
