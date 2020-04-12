class EndorsementsController < ApplicationController
  
  before_action :set_endorsement, only: [:show, :edit, :update]

  def index
    @endorsements = Endorsement.all
  end

  def new
    @endorsement = Endorsement.new
  end

  def create
    @endorsement = Endorsement.create(endorsement_params)
    if endorsement.valid?
      redirect_to @endorsement.teacher
    else
      flash[:errors] = endorsement.errors.full_messages
      redirect_to new_endorsement_path
    end
  end

  def edit
  end

  def update
    @endorsement.update(endorsement_params)
    redirect_to @endorsement
  end

  def show
    @endorsed_activity = @endorsement.activity
  end

  private 

  def set_endorsement
    @endorsement = Endorsement.find(params[:id])
  end

  def endorsement_params
    params.require(:endorsement).permit(:activity_id, :teacher_id, :list_category)
  end

end
