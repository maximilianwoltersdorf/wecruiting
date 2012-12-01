class ApplicationController < ActionController::Base
  protect_from_forgery

 
  def current_user
    current_tester || current_customer || current_manager
  end

  def after_sign_in_path_for(ressource)
    return root_path unless signed_in?
    return customers_root_path if customer_signed_in?
    return admins_root_path if admin_signed_in?
    return consumers_root_path if consumer_signed_in?
  end
end
