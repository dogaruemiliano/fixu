class PaymentsController < ApplicationController
  def new
    @appointment = current_user.appointments.where(status: 'pending').find(params[:appointment_id])
    # to be confirmed where we change the appointment status
    # we will change this after adding Webhook from Stripe
  end

  def show
    @order = current_user.appointments.find(params[:id])
  end
end
