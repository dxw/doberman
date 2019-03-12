class TriageController < ApplicationController
  def start
  end

  def offer_help
    @help_content = case params[:issue_type]
      when 'no_electricity' then 'Do something to fix the electricity!'
      when 'no_gas' then 'Do something about the gas.'
      else 'No help here...'
    end
  end

  def end
    if params[:no]
      redirect_to new_repair_path
    end
  end
end
