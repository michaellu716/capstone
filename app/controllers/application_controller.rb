class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	def render_not_found(status=:not_found)
    	render plain: "#{status.to_s.titleize} :(", status: status
  	end

  	protected
  	def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  def after_sign_in_path_for(resource)
	stored_location_for(resource) || meetings_path
  end
end