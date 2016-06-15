module ApplicationHelper
  def active_class(link_path)
    active = current_page?(link_path) ? "active" : ""
  end

  def relationship_connection(check_profile_id)
    if current_user.has_role? :tutor
      current_profile = TutorProfile.find_by(user_id: current_user.id)
      relationships = current_profile.relationships

      relationships.each do |relationship|
        if relationship.student_profile_id == check_profile_id
          return relationship.student_approved ? 'connected' : 'pending'
        end
      end

    else
      current_profile = StudentProfile.find_by(user_id: current_user.id)
      relationships = current_profile.relationships

      relationships.each do |relationship|
        if relationship.tutor_profile_id == check_profile_id
          return relationship.tutor_approved ? 'connected' : 'pending'
        end
      end

    end
    return 'unconnected'
  end
end
