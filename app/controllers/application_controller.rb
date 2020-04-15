class ApplicationController < ActionController::Base

  helper_method :logged_in_parent, :logged_in_teacher, :logged_in?, :check_if_logged_in, :logged_in_user

  def logged_in_parent
    @logged_in_user = Parent.find_by(id: session[:parent_id]) #how to add teacher here?
  end

  def logged_in_teacher
    @logged_in_user = Teacher.find_by(id: session[:teacher_id])
  end

  def logged_in_user
    @logged_in_user = logged_in_parent || logged_in_teacher
  end

  def logged_in?
    !!logged_in_parent || !!logged_in_teacher
  end

  def check_if_logged_in
    redirect_to root_path unless logged_in?
  end

  def logout
    session.clear
    redirect_to root_path
  end

  # def parent_account
  #   if cookies[:parent_account] == true
  #     if @logged_in_user
  #       redirect_to parent_login_path
  #     else
  #       redirect_to root_path
  #     end
  #   else
  #     cookies.delete[:parent_account]
  #     if @logged_in_user
  #       redirect_to teacher_login_path
  #     else
  #       redirect_to root_path
  #     end
  #   end
  # end

end

  # def teacher_account
  #   cookies.delete[:parent_account]
  #   if @logged_in_user
  #     redirect_to teacher_login_path
  #   else
  #     redirect_to root_path
  #   end
  # end




# def parent_account
#   @_parent_account ||= session[:parent_acount_id] &&
#     Parent.find_by(id: session[:parent_account_id])
# end

# def teacher_account
#   @_teacher_account ||= session[:teacher_account_id] &&
#     User.find_by(id: session[:teacher_account_id])
# end