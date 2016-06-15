class RelationshipsController < ApplicationController

  def new
    if current_user.has_role? :tutor
      @requested_profile = StudentProfile.find(params[:id])
    else
      @requested_profile = TutorProfile.find(params[:id])
    end
    relationship_request(@requested_profile)
    redirect_to @requested_profile
  end

  def index
    if current_user.has_role? :tutor
      current_profile = TutorProfile.find(params[:id])
      relationships = current_profile.relationships
      student_profile_ids = []
      relationships.each do |relationship|
        student_profile_ids.push(relationship.student_profile_id)
      end
      @profiles = StudentProfile.where()
    else
      current_profile = StudentProfile.find(params[:id])
    end
  end

  private

    def relationship_request(requested_profile)
      if current_user.has_role? :tutor
        @profile = TutorProfile.find_by(user_id: current_user.id)
        @relationship = @profile.relationships.create(student_profile: requested_profile)
        @relationship.tutor_approved = true
        @relationship.save
      else
        @profile = StudentProfile.find_by(user_id: current_user.id)
        @relationship = @profile.relationships.create(tutor_profile: requested_profile)
        @relationship.save
      end
    end
end
