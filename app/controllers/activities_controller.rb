class ActivitiesController < ApplicationController
  
  before_action :check_if_logged_in, only: [:show]
  before_action :set_activity, only: [:show]
  
  def index
    if params[:search]
      search_term = params[:search].downcase.gsub(/\s+/, "")
      @activities = Activity.all.select{ |activity| 
        activity.name.downcase.include?(search_term) || 
        activity.description.downcase.include?(search_term) || 
        activity.organization.name.downcase.include?(search_term) || 
        activity.organization.city.downcase.include?(search_term) || 
        activity.organization.state.downcase.include?(search_term) || 
        activity.zipcode.zip_num == search_term }
    else
      @activities = []
    end 
  end
  

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
    redirect_to activities_path
  end

  def show
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :organization_id, :description, :zipcode_id, :phone, :search)
  end
  
end
