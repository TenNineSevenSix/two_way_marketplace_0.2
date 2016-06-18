module MessagesHelper

  def get_profile_name(id)
    if current_user.has_role? :tutor
      @profile = StudentProfile.find_by(user_id: id)
    else
      @profile = TutorProfile.find_by(user_id: id)
    end
    "#{@profile.first_name} #{@profile.last_name}"
  end

  def get_profile(id)
    if current_user.has_role? :tutor
      @profile = StudentProfile.find_by(user_id: id)
    else
      @profile = TutorProfile.find_by(user_id: id)
    end
  end


  def unread_messages(id)
    @messages = Message.where(receiver_id: id, read: nil).or(Message.where(receiver_id: id, read: false))
  end
end
