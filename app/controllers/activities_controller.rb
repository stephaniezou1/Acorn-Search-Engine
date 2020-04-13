class ActivitiesController < ApplicationController

  before_action :set_activity, only: [:show]
  
  def index
    @activities = Activity.all
    if params[:search]
      @activities.select do |activity|
        activity.name.includes(params[:search])
      end
    end

  end

  def show
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  
end
