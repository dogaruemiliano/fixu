class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]
  before_action :set_appointment, only: [:show]

  def show
  end

  def time_location
    @appointment = Appointment.new(appointment_params)
  end

  def create

  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit() # to be completed
  end
end