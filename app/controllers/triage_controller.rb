class TriageController < ApplicationController
  def select_issue_type; end

  def solution
    @issue_type = params[:issue_type]

    case @issue_type
    when 'no_electricity'
      @help_content = 'Do something to fix the electricity!'
    when 'no_gas'
      @help_content = 'Do something about the gas.'
    else
      redirect_to_repair @issue_type
    end
  end

  def done
    redirect_to_repair params[:issue_type] if params[:no]
  end

  private

  def redirect_to_repair(issue_type)
    redirect_to new_repair_path(repair: { issue_type: issue_type })
  end
end
