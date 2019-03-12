class RepairsController < ApplicationController
  def index
    @repairs = Repair.all
  end

  def show
    @repair = Repair.find(params[:id])
  end

  def show_admin
    @admin = true

    show
    render 'show'
  end

  def new
    @repair = Repair.new(repair_params)
  end

  def create
    @repair = Repair.new(repair_params)

    if @repair.save
      redirect_to @repair
    else
      redirect_to action: :new, repair: repair_params
    end
  end

  private

  def repair_params
    params.require(:repair).permit(:property_id, :issue_type, :description)
  end
end
