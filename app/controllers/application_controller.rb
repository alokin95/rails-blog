class ApplicationController < ActionController::Base

  
  private 

  def require_admin
    unless user_signed_in? && current_user.role_id == 1
      redirect_to new_user_session_path
    end
  end

end
