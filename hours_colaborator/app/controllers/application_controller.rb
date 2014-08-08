class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #before_action :authenticate_user!
  protect_from_forgery
	
	alias_method :current_user, :current_user_app

	#rescue_from CanCan::AccessDenied do |exception|
  #		flash[:error] = "Access denied!"
  #		redirect_to root_url
	#end

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.role == "colaborator"
     #debugger
      show_hours_colaborator_path(current_user_app.colaborator)
    elsif resource_or_scope.role == "manager"
      show_colab_manager_path(current_user_app.colaborator)
    end
  end
end
