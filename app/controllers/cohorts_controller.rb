class CohortsController < ApplicationController
    def index
      @cohorts = Cohort.all
    end

    def create
      Cohort.create(name: params[:name], start_date: params[:start_date], end_date: params[:end_date])
      redirect_to '/cohorts'
    end

    def edit
    end

    def destroy
      @cohorts= Cohort.find(params[:id])
      @cohorts.destroy
      redirect_to '/cohorts'
    end
  
end
