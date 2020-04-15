class StaticController < ApplicationController
  
  def home
    if logged_in?
      if cookies[:parent_account]
        redirect_to parent_path(logged_in_user)
      else
        redirect_to teacher_path(logged_in_user)
      end
    end
  end

end
