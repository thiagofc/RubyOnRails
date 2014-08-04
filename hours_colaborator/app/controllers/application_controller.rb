class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #before_action :authenticate_user!
  protect_from_forgery
	
	alias_method :current_user, :current_user_app

	rescue_from CanCan::AccessDenied do |exception|
  		flash[:error] = "Access denied!"
  		redirect_to root_url
	end
end
