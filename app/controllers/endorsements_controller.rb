class EndorsementsController < ApplicationController
  
  def index
    @endorsements = Endorsement.all
  end

  def new
    @endorsement = Endorsement.new
  end

  def create
    @endorsement = Endorsement.create(endorsement_params)
    if endorsement.valid?
      redirect_to @endorsement.activity
    else
      flash[:errors] = endorsement.errors.full_messages
      redirect_to new_endorsement_path
    end
  end

  def edit
  end

  def show
  end

  private 

  def endorsement_params
    params.require(:endorsement).permit(:activity_id, :teacher_id, :list_category)
  end

end
