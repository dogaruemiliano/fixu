class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:time_location, :set_fixer]

  before_action :set_appointment, only: [:show]

  def show
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
    params.require(:appointment).permit() # to be completed
  end
end
