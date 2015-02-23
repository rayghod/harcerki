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

  def current_order
    if user_signed_in?
      if (Order.find_by user_id:current_user.id).nil?
        Order.new
      elsif Order.find_by(iscart: 0, user_id: current_user.id).nil?
        Order.new
      else
        Order.find_by(iscart: 0, user_id: current_user.id)
      end
    else

    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name

    devise_parameter_sanitizer.for(:sign_up) << :street
    devise_parameter_sanitizer.for(:account_update) << :street
    devise_parameter_sanitizer.for(:sign_up) << :housenumber
    devise_parameter_sanitizer.for(:account_update) << :housenumber
    devise_parameter_sanitizer.for(:sign_up) << :apartmentnumber
    devise_parameter_sanitizer.for(:account_update) << :apartmentnumber
    devise_parameter_sanitizer.for(:sign_up) << :city
    devise_parameter_sanitizer.for(:account_update) << :city
    devise_parameter_sanitizer.for(:sign_up) << :zipcode
    devise_parameter_sanitizer.for(:account_update) << :zipcode
  end

end