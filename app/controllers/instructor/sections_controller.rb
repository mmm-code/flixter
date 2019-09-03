class Instructor::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course
  
  def new
    @section = Section.new
  end
  
  def create
    @section = current_course.sections.create(section_params)
    redirect_to instructor_course_path(current_course)
  end
  
  def update
    current_section.update_attributes(params[:section_id])
    render plain: 'updated!'
  end

  private
  helper_method :current_section
  def current_section
    @current_section ||= Section.find(params[:section_id])
  end
  
  def require_authorized_for_current_course
    #if current_course.user != current_user
      #render plain: "Unauthorized", status: :unauthorized
    #end
  end
  
  helper_method :current_course
  def current_course
    if params[:course_id]
    @current_course ||= Course.find(params[:course_id])
    else
      current_section.course
  end

  def section_params
    params.require(:section).permit(:title)
  end
  end
  
  