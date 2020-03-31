class MessagesController < ApplicationController
  before_action :set_appointment, only: [:create, :index]

  def index
    @messages = @appointment.messages
    @new_message = Message.new
  end

  def create
   @message = Message.new(message_params)
   @message.appointment = @appointment
   @message.user = current_user
   if @message.save
    redirect_to appointment_messages_path(@appointment)
  else
    # to be done in Ajax
    raise
    @messages = @appointment.messages
    @new_message = @message
    render :index
  end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:appointment_id])
  end

  def message_params
    params.require(:message).permit(:content, :user_id, :appointment_id)
  end
end
