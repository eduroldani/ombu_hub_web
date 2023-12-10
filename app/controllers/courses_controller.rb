class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @courses = Course.all
  end


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
    if @course.save
      redirect_to courses_path(@course)
    else
      render :new, status: :unprocessable_entity
    end


  end


  def edit
    @course = Course.find_by(url: params[:id])
  end



    def update
      @course = Course.find_by(url: params[:id])

      if @course.update(course_params)
        redirect_to courses_path, notice: 'Course was successfully updated.'
      else
        flash[:error] = 'Error updating the course.'
        render :edit
      end
    end





  def destroy
    @course = Course.find_by(url: params[:id])
    @course.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to courses_path, status: :see_other
  end


  private

  def course_params
    params.require(:course).permit(:title, :description, :when,:url ,:who, :what, :photo)
  end

end
