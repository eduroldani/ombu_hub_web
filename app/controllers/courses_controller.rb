class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]


  def show
    # @course = Course.find(params[:id])
    @course = Course.find_by(url: params[:id])
  end


  def new
    @course = Course.new # Needed to instantiate the form_with
  end

  def create
    @course = Course.new(course_params)
    @course.save
    # No need for app/views/restaurants/create.html.erb
  redirect_to courses_path(@course)

  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :when,:url)
  end

end
