class AssestsController < ApplicationController

  before_action :set_assest, only:[:show, :edit, :update, :destroy]
  
  def show
  end

  def index
    @q = Assest.ransack(params[:q])
    @assests = @q.result(distinct: true)
    
  end
  
  def new
    @assest = Assest.new
  end

  def create
    @assest = Assest.new(assest_params)
    @assest.user = current_user
    if @assest.save
      flash[:notice] = "Assest was created successfully."
      redirect_to @assest
    else
      render 'new'
    end
  end

  def edit
  end

  def update
        if @assest.update(assest_params)
          flash[:notice] = "Assest was updated succesfully."
          redirect_to @assest
            else
              render 'edit'
          end
  end

  def destroy
    @assest.destroy
    redirect_to assest_path
  end

  private

  def set_assest
    @assest = Assest.find(params[:id])
  end

  def assest_params
    params.require(:assest).permit(:assest_name, :serial_no, :category, :aesset_ammount, :department, :description)
  end

  
end
