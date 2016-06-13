module MessagesHelper

  def get_profile_name(id)
    if current_user.has_role? :tutor
      @student_profile = StudentProfile.find_by(user_id: id)
      "#{@student_profile.first_name} #{@student_profile.last_name}"
    else
      @tutor_profile = TutorProfile.find_by(user_id: id)
      "#{@tutor_profile.first_name} #{@tutor_profile.last_name}"
    end
  end

  def unread_messages(id)
    @messages = Message.where(receiver_id: id, read: nil).or(Message.where(receiver_id: id, read: false))
  end
end
