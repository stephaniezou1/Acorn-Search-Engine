class ApplicationController < ActionController::Base

  helper_method :logged_in_user, :logged_in?

  def logged_in_user
    @logged_in_user = Parent.find_by(id: session[:parent_id])
  end

  def logged_in?
    !!logged_in_user
  end

  def check_if_logged_in
    redirect_to parent_login_path unless logged_in?
  end

  def parent_account
    cookies[:parent_account] = {
      value: 'parent account'
    }
    if @logged_in_user
      redirect_to parent_login_path
    else
      redirect_to root_path
    end
  end

  def teacher_account
    cookies.delete[:parent_account]
    if @logged_in_user
      redirect_to teacher_login_path
    else
      redirect_to root_path
    end
  end

end
