class ActivitiesController < ApplicationController
  
  before_action :check_if_logged_in, only: [:show]
  before_action :set_activity, only: [:show]
  
  def index
    if params[:search]
      @activities = Activity.search_by_activity(params[:search])
    else
      @activities = Activity.all
    end 
  end

  # def search  
  #   if params[:search].blank?  
  #     redirect_to activities_path  
  #   else  
  #     @parameter = params[:search].downcase  
  #     @results = Activity.all.where("lower(name) LIKE :search", search: @parameter)  
  #   end  
  # end

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
