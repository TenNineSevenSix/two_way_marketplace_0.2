class StudentProfile < ApplicationRecord
  belongs_to :user
  has_many :relationships
  has_many :tutor_profiles, through: :relationships
  has_many :homeworks

  mount_uploader :profile_image, ProfileImageUploader

  def self.search(search)
    if search
      find(:all, :conditions => ['categories ILIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
