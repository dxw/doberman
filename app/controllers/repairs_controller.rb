class RepairsController < ApplicationController
  def index
    if @admin
      @repairs = Repair.all
    else
      redirect_to root_path
    end
  end

  def show
    @repair = Repair.find(params[:id])
  end

  def new
    @repair = Repair.new(repair_params)
  end

  def edit
    if @admin
      @repair = Repair.find(params[:id])
    else
      redirect_to action: :show, id: params[:id]
    end
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

    if @admin && @repair.update(repair_params)
      redirect_to @repair
    else
      redirect_to action: :edit, id: @repair.id
    end
  end

  private

  def repair_params
    params.require(:repair).permit(
      :name, :address, :issue_type, :description, :status
    )
  end
end
