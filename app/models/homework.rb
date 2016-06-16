class Homework < ApplicationRecord
  belongs_to :tutor_profile
  belongs_to :student_profile
end
