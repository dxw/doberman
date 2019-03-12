class TriageController < ApplicationController
  def start
  end

  def offer_help
    @issue_type = params[:issue_type]
    @help_content = case @issue_type
      when 'no_electricity' then 'Do something to fix the electricity!'
      when 'no_gas' then 'Do something about the gas.'
      else 'No help here...'
    end
  end

  def end
    if params[:no]
      redirect_to new_repair_path(repair: { issue_type: params[:issue_type] })
    end
  end
end
