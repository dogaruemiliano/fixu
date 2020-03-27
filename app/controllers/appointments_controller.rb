class AppointmentsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:time_location, :set_fixer]

  before_action :set_appointment, only: [:show, :update, :preference, :fixer]

  def show
    @year = @appointment.time.year
    @month = @appointment.time.month
    @day = @appointment.time.day
    @hour = @appointment.time.hour
    @min = @appointment.time.min
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    if @appointment.save
      redirect_to appointment_preference_path(@appointment)
    else
      render :new
    end
  end

  def preference

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

  def fixer
    @fixers = Fixer.all
  end

  def time_location
    @appointment = Appointment.new(appointment_params)
  end

  def set_fixer
    # the step where we print the fixers
    raise
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:time, :status, :price, :comment, :address, :problem_id, :user_id, :fixer_id, photos: []) # to be completed
  end
end
