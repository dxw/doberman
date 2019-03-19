class AuthController < ApplicationController
  def log_in
    session[:logged_in] = true

    redirect_back fallback_location: root_path
  end

  def log_in_as_admin
    session[:logged_in] = true
    session[:logged_in_as_admin] = true

    redirect_back fallback_location: root_path
  end

  def log_out
    session.delete(:logged_in)
    session.delete(:logged_in_as_admin)

    redirect_back fallback_location: root_path
  end
end
