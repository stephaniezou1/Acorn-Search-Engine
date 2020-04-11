class ParentsController < ApplicationController
  
  def index
    @parents = Parent.all
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def edit
  end

  def update
  end

end
