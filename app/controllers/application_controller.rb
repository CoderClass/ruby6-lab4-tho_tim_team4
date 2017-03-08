class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    if session[:username]
      @current_user = session[:username]
    end
  end


end
