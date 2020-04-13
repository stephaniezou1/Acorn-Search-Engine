class ParentsController < ApplicationController
  
  #before_action :set_parent, only: [:show, :edit, :update]
  before_action :check_if_logged_in
  skip_before_action :check_if_logged_in, only: [:loginform]


  def index
    @parents = Parent.all
  end

  def show
  end

  def new
    @parent = Parent.new
    @errors = flash[:errors]
  end

  def create
    @parent = Parent.create(parent_params)
    if parent.valid?
      session[:parent_id] = parent.id
      redirect_to parent
    else
      flash[:errors] = pet.errors.full_messages
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
    redirect_to parent_login_path
  end

  private

  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(:username, :password, :email, :zipcode_id)
  end

end
