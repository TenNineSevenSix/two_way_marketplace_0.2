module TutorProfilesHelper

  def full_name(tutor)
    "#{tutor.first_name} #{tutor.last_name}"
  end
  
  def address(tutor)
    "#{tutor.suburb} #{tutor.state} #{tutor.country}"
  end
end
