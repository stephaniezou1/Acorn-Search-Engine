class TeachersController < ApplicationController

  before_action :set_teacher, only: [:show, :edit, :update]
  before_action :check_if_logged_in
  skip_before_action :check_if_logged_in, only: [:loginform, :handle_login, :new, :create]
  
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

  def endorse
    @new_endorsement = @logged_in_user.endorsements.create(activity_id: params[:activity_id])
    flash[:message] = "You've added this activity to your endorsements!"
    redirect_to @new_endorsement.activity
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @num = params[:teacher][:zipcode]
    @zipcode = Zipcode.find_or_create_by!(zip_num: @num)
    params[:teacher][:zipcode_id] = @zipcode.id
    @teacher = Teacher.create(teacher_params)
    if @teacher.valid?
      session[:teacher_id] = @teacher.id
      redirect_to @teacher
    else
      flash[:errors] = @teacher.errors.full_messages
      redirect_to new_teacher_path
    end
  end

  def update
    @teacher.update(teacher_params)
    redirect_to @teacher
  end

  def loginform
    @teacher = Teacher.new
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
    redirect_to root_path
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:username, :email, :zipcode_id, :password)
  end

end
