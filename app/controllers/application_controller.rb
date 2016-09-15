class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  helper_method :current_order, :current_userid

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end

  # def current_order
  #   if !session[:order_id].nil?
  #     Order.find(session[:order_id])
  #   else
  #     Order.new
  #   end
  # end



  protected
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:street])
  devise_parameter_sanitizer.permit(:account_update, keys: [:street])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:housenumber])
  devise_parameter_sanitizer.permit(:account_update, keys: [:housenumber])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:apartmentnumber])
  devise_parameter_sanitizer.permit(:account_update, keys: [:apartmentnumber])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:city])
  devise_parameter_sanitizer.permit(:account_update, keys: [:city])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:zipcode])
  devise_parameter_sanitizer.permit(:account_update, keys: [:zipcode])
  end

end