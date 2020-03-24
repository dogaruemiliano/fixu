class FixersController < ApplicationController
  def new
    @fixer = Fixer.new()
    @user = current_user
  end

  def create
    @fixer = Fixer.new(fixer_params)
    @fixer.user = current_user

    if @fixer.save!
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def destroy
    fixer = Fixer.find(params[:id])
    fixer.destroy!
    redirect_to user_path(current_user.id)
  end

  private

  def fixer_params
    params.require(:fixer).permit(:start_time, :end_time, :unit_price)
  end
end
