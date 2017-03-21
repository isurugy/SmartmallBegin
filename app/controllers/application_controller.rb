class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
  def after_sign_in_path_for(resource)
    root_path
  end



  # private
  # def after_sign_in_path_for(resource)
  #  #if session[:userType].nil?
  #
  #  # if Rails.application.config.session_store key:'userType' == "sellert"
  #   #if cookies[:userType] == "seller"
  #   if session[:userType]=='sellerZ'
  #     usr_register_path
  #   else
  #     root_path
  #   end
  # end
end
