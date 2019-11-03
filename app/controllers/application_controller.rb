class ApplicationController < ActionController::Base

  helper_method :current_user
  helper_method :current_chef

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def current_chef
    if session[:chef_id]
      @current_chef ||= Chef.find(session[:chef_id])
    else
      @current_chef = nil
    end
  end
end
