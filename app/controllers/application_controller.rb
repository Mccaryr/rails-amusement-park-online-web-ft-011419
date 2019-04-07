class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user 
  helper_method :current_user, :logged_in? 

  def current_user 
    @user ||= User.find(session[:user_id]) if logged_in? 
  end 

  def logged_in?
    session[:user_id]
  end 

  
end
