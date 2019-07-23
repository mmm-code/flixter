class Instructor::CoursesController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @course = Course.new
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  private
  
  def course_params
    params.require(:course).permit(:title, :description, :cost)
  end
end
