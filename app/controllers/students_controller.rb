class StudentsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def index
    @students = Student.all
  end

  def create
    @students = Student.create(name: params[:name], last_name: params[:last_name], age: params[:age], education_level: params[:education_level])
    redirect_to '/students'
  end

  def edit
    @students = Student.find(params[:id])

  end

  def update
  end

  def destroy
    @students = Student.find(params[:id])
    @students.destroy
    redirect_to '/students'
  end
end
