class SessionsController < ApplicationController
  
  def new
  end

  def create
    #first find the teacher
    if parent_account
      parent = Parent.find_by(email: params[:email]) 
      if parent = Parent.authenticate(params[:email], params[:password])
        session[:parent_account] = parent.id
        redirect_to parent_path(@parent.email)
      else
        flash.now[:notice] = "Email and/or password incorrect"
        render :new
      end
    else
      teacher = Teacher.find_by(email: params[:email]) 
      if teacher = Teacher.authenticate(params[:email], params[:password])
        session[:teacher_account] = @teacher.id
        redirect_to teacher_path(@teacher.email)
      else
        flash.now[:notice] = "Email and/or password incorrect"
        render :new
      end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
  
end
