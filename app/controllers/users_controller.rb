class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @appointments = current_user.appointments
    @upcoming_appointments = @appointments.select{|appointment| appointment.status == "confirmed" && appointment.time >= Date.today}.reverse
    @past_appointments = @appointments.select{|appointment| appointment.status == "confirmed" && appointment.time < Date.today}.reverse
  end
end
