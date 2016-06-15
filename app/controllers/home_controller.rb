class HomeController < ApplicationController
  def index
    # check_profile_exists
  end

  def search
  end

  def check_profile_exists
    if tutor_empty_profile?
        redirect_to new_tutor_profile_path
    elsif student_empty_profile?
        redirect_to new_student_profile_path
    end
  end

  def tutor_empty_profile?
    !current_user.nil? && current_user.has_role?(:tutor) && current_user.tutor_profile.nil?
  end

  def student_empty_profile?
    !current_user.nil? && current_user.has_role?(:student) && current_user.student_profile.nil?
  end
end
