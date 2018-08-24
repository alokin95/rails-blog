class ApplicationController < ActionController::Base
  # before_action :configure_permited_parameters, if: devise_controller?
  
  
  # def configure_permited_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  # end

  private 

  def require_admin
    unless user_signed_in? && current_user.role_id == 1
      redirect_to new_user_session_path
    end
  end

end
