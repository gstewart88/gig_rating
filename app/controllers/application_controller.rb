class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #If the user authorization fails, a CanCan::AccessDenied exception will be raised.
  
  rescue_from CanCan::AccessDenied do |exception|
   redirect_to root_path, alert: "You can't access this page"
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    extra_fields = [:name, :username, :role_id, :user_image, :user_location]
     extra_fields.each { |field| devise_parameter_sanitizer.for(:sign_up) << field }
     extra_fields.each { |field| devise_parameter_sanitizer.for(:account_update) << field }
   end



end
