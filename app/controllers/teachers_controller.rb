class TeachersController < ApplicationController

  before_action :set_teacher, only: [:show, :edit, :update]
  before_action :check_if_logged_in
  
  
  def index
    if params[:search]
      search_term = params[:search].downcase.gsub(/\s+/, "")
      @teachers = Teacher.all.select{ |teacher| 
        teacher.username.downcase.include?(search_term) || 
        teacher.email.downcase.include?(search_term) || 
        teacher.zipcode.zip_num == search_term }
    else
      @teachers = []
    end 
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    if teacher.valid?
      session[:teacher_id] = teacher.id
      redirect_to teacher
    else
      flash[:errors] = pet.errors.full_messages
      redirect_to new_teacher_path
    end
  end

  def update
    @teacher.update(teacher_params)
    redirect_to @teacher
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

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:username, :email, :zipcode_id, :password)
  end

end
