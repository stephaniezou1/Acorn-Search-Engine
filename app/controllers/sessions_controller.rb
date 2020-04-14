class SessionsController < ApplicationController
  
  def new
  end

  def create
    #first find the parent
    parent = Parent.find_by(email: params[:email]) 
    auth_parent = Parent.try(:authenticate, params[:password])
    if auth_parent
      @parent = parent
      session[:parent_id] = @parent.id
      redirect_to parent_path(@parent.email)
    else
      flash.now[:notice] = "Username and/or password incorrect"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
