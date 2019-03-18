class RepairUpdatesController < ApplicationController
  def create
    @repair = Repair.find(params[:repair_id])
    @update = @repair.updates.create(update_params)

    redirect_to repair_path(@repair)
  end

  private

  def update_params
    params.require(:repair_update).permit(:status, :description)
  end
end
