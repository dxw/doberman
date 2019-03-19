class RepairUpdatesController < ApplicationController
  def create
    @repair = Repair.find(params[:repair_id])
    @update = RepairUpdate.new(update_params.merge(repair: @repair))

    if @update.save
      redirect_to @repair
    else
      render 'repairs/show'
    end
  end

  private

  def update_params
    params.require(:repair_update).permit(:status, :description)
  end
end
