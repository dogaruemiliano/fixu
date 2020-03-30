class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  before_action :set_appointment, only: [:show, :edit, :update, :destroy, :preference, :fixer]

  def show
    @year = @appointment.time.year
    @month = @appointment.time.month
    @day = @appointment.time.day
    @hour = @appointment.time.hour
    @min = @appointment.time.min
  end

  def new
    @category = Category.find(params[:category_id])
    @appointment = Appointment.new
    @problems = @category.problems
  end

  def create
    @category = Category.find(params[:category_id])
    @problems = @category.problems
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    if @appointment.save
      redirect_to appointment_preference_path(@appointment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      if @appointment.fixer
        redirect_to appointment_path(@appointment)
      else
        redirect_to appointment_fixer_path(@appointment)
      end
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    if @appointment.status == "created"
      redirect_to root_path
    end
  end

  def preference
  end

  def fixer
    @fixers = Fixer.all
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:time, :status, :price_cents, :comment, :address, :problem_id, :cancel_reason, :user_id, :fixer_id, photos: []) # to be completed
  end
end
