class RepairsController < ApplicationController
  def index
    @repairs = Repair.all
  end

  def show
    @repair = Repair.find(params[:id])
  end

  def new
    @repair = Repair.new(repair_params)
  end

  def edit
    @repair = Repair.find(params[:id])
  end

  def create
    @repair = Repair.new(repair_params)

    if @repair.save
      redirect_to @repair
    else
      redirect_to action: :new, repair: repair_params
    end
  end

  def update
    @repair = Repair.find(params[:id])

    if @repair.update(repair_params)
      redirect_to @repair
    else
      redirect_to action: :edit, id: @repair.id
    end
  end

  private

  def repair_params
    params.require(:repair).permit(:name, :address, :issue_type, :description, :status)
  end
end
