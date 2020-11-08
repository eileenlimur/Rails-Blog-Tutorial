class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if :advise_controller?
  
  #sign in and sign out
  
  protected
  
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end
