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

  def stored_location_for(resource_or_scope)
    session[:user_app_return_to] || super
  end

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.role == "colaborator"
      redirect_to :controller => 'hours_registrations', :action => 'list_hours_colaborator', :id => current_user_app.colaborator.id
    else
      "/hours_registraions"
    end
  end
end
