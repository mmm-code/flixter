class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course
  

  
  private
  
 
  
  helper_method :current_lesson
  
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
