class StudentProfile < ApplicationRecord
  belongs_to :user
  mount_uploader :profile_image, ProfileImageUploader
  has_many :relationships
  has_many :tutor_profiles, through: :relationships

  def self.search(search)
    if search
      find(:all, :conditions => ['categories ILIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
