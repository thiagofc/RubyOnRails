class RegistrationsController < Devise::RegistrationsController
	before_filter :check_permissions, :only => [:new, :create, :cancel]
	skip_before_filter :require_no_authentication

	def check_permissions
        authorize! :create, resource
  end

  # GET /resource/sign_up
  def new
    build_resource({})
    respond_with self.resource
  end

  # POST /resource
  def create
    build_resource(sign_up_params)

    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        #sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  private
 
  def sign_up_params
    params.require(:user_app).permit(:email, :password, :password_confirmation, :role)
  end
 
  def account_update_params
    params.require(:user_app).permit(:email, :password, :password_confirmation, :current_password, :role)
  end

  def after_sign_up_path_for(resource)
    '/home'
  end
 
end