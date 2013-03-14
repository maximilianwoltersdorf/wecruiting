class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale



  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
 
  def current_user
    current_consumer || current_customer || current_admin
  end

  def after_sign_in_path_for(ressource)
    return root_path unless signed_in?
    return customers_root_path if customer_signed_in?
    return admins_root_path if admin_signed_in?
    return consumers_root_path if consumer_signed_in?
  end
  
 private
 
  def generate_public_user_token
    cookies[:user_token] = InterviewAnswer.generate_token unless cookies[:user_token]
  end
end
