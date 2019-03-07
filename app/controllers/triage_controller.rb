class TriageController < ApplicationController
  def start
  end

  def offer_help
  end

  def end
    if params[:no]
      redirect_to new_repair_path
    else
      redirect_to triage_start_path
    end
  end
end
