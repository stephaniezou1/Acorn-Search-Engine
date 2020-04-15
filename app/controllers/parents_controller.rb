class ParentsController < ApplicationController
  
  before_action :set_parent, only: [:show, :edit, :update]
  before_action :check_if_logged_in, only: [:show, :edit, :index, :update]
  skip_before_action :check_if_logged_in, only: [:loginform, :handle_login, :new, :create]


  def index
    @parents = Parent.all
  end

  def show
    if @logged_in_user.id != params[:id].to_i
      redirect_to @logged_in_user
    end
  end

  def new
    @parent = Parent.new
    @errors = flash[:errors]
  end

  def create
    @num = params[:parent][:zipcode]
    @zipcode = Zipcode.find_or_create_by!(zip_num: @num)
    params[:parent][:zipcode_id] = @zipcode.id
    @parent = Parent.create(parent_params)
    if @parent.valid?
      session[:parent_id] = @parent.id
      redirect_to @parent
    else
      flash[:errors] = @parent.errors.full_messages
      redirect_to new_parent_path
    end
  end

  def edit
  end

  def update
    @parent.update(parent_params)
    redirect_to @parent
  end

  def loginform
    @errors = flash[:errors]
    # render "teachers/login"
  end

  def handle_login
    @parent = Parent.find_by(email: params[:email])
    if @parent && @parent.authenticate(params[:password])
      session[:parent_id] = @parent.id
      redirect_to @parent
    else
      flash[:error] = "Invalid email or password"
      redirect_to parent_login_path
    end
  end

  def logout
    session[:parent_id] = nil
    redirect_to root_path
  end

  private

  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(:username, :password, :email, :zipcode_id)
  end

end
