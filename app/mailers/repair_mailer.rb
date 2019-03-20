class RepairMailer < ApplicationMailer
  def reported_email
    @repair_id = params[:repair_id]

    mail to: params[:email], subject: 'Repair Reported'
  end
end
