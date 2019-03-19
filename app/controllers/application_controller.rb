class ApplicationController < ActionController::Base
  before_action :admin

  private

  def admin
    @admin = session[:logged_in_as_admin]
  end
end
