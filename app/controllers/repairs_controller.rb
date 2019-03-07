class RepairsController < ApplicationController
  def index
    @repairs = Repair.all
  end

  def show
    @repair = Repair.find(params[:id])
  end

  def new
  end

  def create
    @repair = Repair.new(repair_params)

    @repair.save
    redirect_to @repair
  end

  private

  def repair_params
    params.require(:repair).permit(:issue_type)
  end
end
