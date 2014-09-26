class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :update_sanitized_params, if: :devise_controller?
  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :user_type)}

    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :current_password, :user_type)}
  end
  def after_sign_in_path_for(resource)
    if @user.user_type == "Sommelier/Restauranteur"
      restaurant_dashboard_index_path
    else
      user_dashboard_index_path
    end
  end
end
