class ApplicationController < ActionController::Base
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :email, :password) }
  end
end
