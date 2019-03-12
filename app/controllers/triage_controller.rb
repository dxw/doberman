class TriageController < ApplicationController
  def start
  end

  def offer_help
    @issue_type = params[:issue_type]
    case @issue_type
      when 'no_electricity'
        @help_content =  'Do something to fix the electricity!'
      when 'no_gas'
        @help_content = 'Do something about the gas.'
      else
        redirect_to_repair @issue_type
    end
  end

  def end
    if params[:no]
      redirect_to_repair params[:issue_type]
    end
  end

  private

  def redirect_to_repair(issue_type)
    redirect_to new_repair_path(repair: { issue_type: issue_type })
  end
end
