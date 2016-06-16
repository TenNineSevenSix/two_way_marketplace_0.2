class RelationshipsController < ApplicationController
include ApplicationHelper

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
    @my_connections = get_user_relationships
  end

  private

    def relationship_request(requested_profile)
      if current_user.has_role? :tutor
        @profile = TutorProfile.find_by(user_id: current_user.id)
        if relationship_connection(requested_profile.id) == 'unconnected'
          @relationship = @profile.relationships.create(student_profile: requested_profile)
        else
          @relationship = Relationship.find_by(student_profile_id: requested_profile.id, tutor_profile_id: @profile.id)
        end
        @relationship.tutor_approved = true
        @relationship.save
      else
        @profile = StudentProfile.find_by(user_id: current_user.id)
        if relationship_connection(requested_profile.id) == 'unconnected'
          @relationship = @profile.relationships.create(tutor_profile: requested_profile)
        else
          @relationship = Relationship.find_by(tutor_profile_id: requested_profile.id, student_profile_id: @profile.id)
        end
        @relationship.student_approved = true
        @relationship.save
      end
    end

    def get_user_relationships
      if current_user.has_role? :tutor
        current_profile = TutorProfile.find_by(user_id: current_user.id)
        student_profile_ids = []
        current_profile.relationships.each do |relationship|
          student_profile_ids.push(relationship.student_profile_id)
        end
        profiles = StudentProfile.where(id: student_profile_ids)
      else
        current_profile = StudentProfile.find_by(user_id: current_user.id)
        tutor_profile_ids = []
        current_profile.relationships.each do |relationship|
          tutor_profile_ids.push(relationship.tutor_profile_id)
        end
        profiles = TutorProfile.where(id: tutor_profile_ids)
      end
    end
end
