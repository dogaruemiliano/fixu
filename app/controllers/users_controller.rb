class UsersController < ApplicationController
  def index
    redirect_to root_path
  end
  def show
    @user = User.find(params[:id])

    @review = Review.new

    @appointments = current_user.appointments

    @upcoming_appointments = @appointments.select{|appointment| appointment.status == "confirmed" && appointment.time > DateTime.now}.reverse
    @past_appointments = @appointments.select{|appointment| appointment.status == "confirmed" && appointment.time < DateTime.now}.reverse
    @cancelled_appointments = @appointments.select{|appointment| appointment.status == "cancelled"}.reverse
  end
end
