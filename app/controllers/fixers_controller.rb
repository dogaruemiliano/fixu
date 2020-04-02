class FixersController < ApplicationController
  before_action :set_fixer, only: [:edit, :update, :destroy, :details, :appointments]
  def new
    @fixer = Fixer.new()
    @user = current_user
    @categories = Category.all
  end

  def create
    @fixer = Fixer.new(fixer_params)
    @fixer.user = current_user
    @fixer.price_cents = @fixer.price_cents * 100
    if @fixer.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user = current_user
    if @fixer.update(fixer_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @fixer.destroy!
    redirect_to root_path
  end

  def details
    @speciality = Speciality.new
    @categories = Category.all
    @specialities = @fixer.specialities

    if @fixer.start_time.hour <= 9
      @starting_hour = "0#{@fixer.start_time.hour}:#{@fixer.start_time.min}0"
    else
      @starting_hour = "#{@fixer.start_time.hour}:#{@fixer.start_time.min}0"
    end
      @ending_hour = "#{@fixer.end_time.hour}:#{@fixer.end_time.min}0"
    end

  def appointments
    @appointments = @fixer.appointments
    @upcoming_appointments = Appointment.where(["status = ? AND time >= ?", "confirmed", DateTime.now]).reverse
    @past_appointments = Appointment.where(["status = ? AND time < ?", "confirmed", DateTime.now]).reverse
    @cancelled_appointments = Appointment.where(["status = ?", "confirmed"]).reverse
  end

  private

  def set_fixer
    @fixer = Fixer.find(params[:id])
  end

  def fixer_params
    params.require(:fixer).permit(:start_time, :end_time, :price_cents, :speciality_id)
  end
end
