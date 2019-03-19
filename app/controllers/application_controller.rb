class ApplicationController < ActionController::Base
  before_action :admin

  protected

  def logged_in
    session[:logged_in]
  end

  private

  def admin
    @admin = session[:logged_in_as_admin]
  end
end
