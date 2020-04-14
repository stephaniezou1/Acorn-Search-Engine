class TeachersController < ApplicationController

  before_action :check_if_logged_in
  
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
  end

  def update
  end

  def loginform
    @errors = flash[:errors]
  end

  def handle_login
    @teacher = Teacher.find_by(email: params[:email])
    if @teacher && @teacher.authenticate(params[:password])
      session[:teacher_id] = @teacher.id
      redirect_to @teacher
    else
      flash[:error] = "Invalid username or password"
      redirect_to teacher_login_path
    end
  end

  def logout
    session[:teacher_id] = nil
    redirect_to teacher_login_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:username, :email, :zipcode_id, :password)
  end

end
