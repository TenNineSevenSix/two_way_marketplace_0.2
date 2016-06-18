class HomeworksController < ApplicationController

  def index
    if current_user.has_role? :tutor
      tutor_profile = TutorProfile.find_by(user_id: current_user.id)
      @homeworks = Homework.where(student_profile_id: params[:profile_id], tutor_profile_id: tutor_profile.id)
      @homework = Homework.new
      @profile = StudentProfile.find_by(id: params[:profile_id])
    else
      student_profile = StudentProfile.find_by(user_id: current_user.id)
      @homeworks = Homework.where(tutor_profile_id: params[:profile_id], student_profile_id: student_profile.id)
      @profile = TutorProfile.find_by(id: params[:profile_id])
    end
  end

  def new
  end

  def show
    @homework = Homework.find(params[:id])
  end

  def create
    tutor_profile = TutorProfile.find_by(user_id: current_user.id)
    @homework = Homework.new(homework_params)
    @homework.tutor_profile_id = tutor_profile.id
    @homework.save
    redirect_to({ controller: 'homeworks', action: 'index', profile_id: @homework.student_profile_id })
  end

  private

  def homework_params
    params.require(:homework).permit(:tutor_profile_id, :student_profile_id, :question, :answer, :tutor_comments, :completed, :result)
  end

end
