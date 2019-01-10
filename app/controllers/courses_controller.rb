class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def create
    Course.create(subject: params[:subject], time_completion: params[:time_completion], description: params[:description])
    redirect_to '/courses'
  end

  def edit
  end

  def destroy
    @courses = Course.find(params[:id])
    @courses.destroy
      redirect_to '/courses'
  end
end



