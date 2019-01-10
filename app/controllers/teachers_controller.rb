class TeachersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]
  def index
    @teachers = Teacher.all
  end

  def create
    Teacher.create(name: params[:name], last_name: params[:last_name], age: params[:age], salary: params[:salary], subject: params[:subject])
    redirect_to '/teachers'
    end

  def edit
  end

  def update
  end

  def destroy
    @teachers =Teacher.find(params[:id])
    @teachers.destroy
    redirect_to '/teachers'
  end
end
