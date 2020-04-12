class ParentsController < ApplicationController
  
  before_action :set_parent, only: [:show, :edit, :update]

  def index
    @parents = Parent.all
  end

  def show
  end

  def edit

  end

  def update
    @parent.update(parent_params)
    redirect_to @parent
  end

  private

  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(:username, :password, :email, :zipcode_id)
  end

end
