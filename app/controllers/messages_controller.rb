class MessagesController < ApplicationController
  before_action :set_appointment, only: [:create, :index]

  def index
    @messages = @appointment.messages
    @new_message = Message.new
    respond_to do |format|
      format.html
      format.js
    end

  end

  def create
    @message = Message.new(message_params)
    @message.appointment = @appointment
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to appointment_messages_path(@appointment) }
        format.js
      end
    else
      @messages = @appointment.messages
      @new_message = @message
      respond_to do |format|
          format.html { render :index }
          format.js
      end
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
