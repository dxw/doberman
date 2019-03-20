class RepairMailer < ApplicationMailer
  def reported_email
    @repair_id = params[:repair_id]

    mail to: params[:email], subject: 'Repair Reported'
  end

  def updated_email
    @repair_id = params[:repair_id]

    mail to: params[:email], subject: 'Repair Updated'
  end
end
