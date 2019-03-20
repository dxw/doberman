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
    @update = RepairUpdate.new
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
      RepairMailer.with(email: @repair.email, repair_id: @repair.id)
                  .reported_email.deliver_later

      redirect_to @repair
    else
      render 'new'
    end
  end

  def update
    if @admin
      @repair = Repair.find(params[:id])

      if @repair.update(repair_params)
        redirect_to @repair
      else
        render 'edit'
      end
    else
      redirect_to action: :show, id: params[:id]
    end
  end

  private

  def repair_params
    params.require(:repair).permit(
      :name, :address, :email, :issue_type, :description, :status
    )
  end
end
