class CohortsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

    def index
      @cohorts = Cohort.all
    end

    def create
      Cohort.create(name: params[:name], start_date: params[:start_date], end_date: params[:end_date])
      redirect_to '/cohorts'
    end

    def edit
      @cohorts = Cohort.find(params[:id])
      
    end

    def update
      raise params.inspect
      @cohorts = Cohort.find(params[:id])
      @cohorts.update(name: params[:name], start_date: params[:start_date], end_date: params[:end_date])
      redirect_to cohorts_path(@cohorts)
      # redirect_to '/cohorts'
    end

    def destroy
      @cohorts= Cohort.find(params[:id])
      @cohorts.destroy
      redirect_to '/cohorts'
    end

    private 

    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date)
    end
  
end
