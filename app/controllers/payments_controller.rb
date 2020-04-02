class PaymentsController < ApplicationController
  def new
    @appointment = current_user.appointments.where(status: 'pending').find(params[:appointment_id])
  end

  def show
    @order = current_user.appointments.find(params[:id])
  end
end
