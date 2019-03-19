class LandingController < ApplicationController
  def index
    redirect_to triage_select_path
  end
end
