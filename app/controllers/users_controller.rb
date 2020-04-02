class UsersController < ApplicationController
  def index
    redirect_to root_path
  end
  def show
    @user = User.find(params[:id])

    @review = Review.new

    @appointments = current_user.appointments

    @upcoming_appointments = Appointment.where(["status = ? AND time >= ?", "confirmed", DateTime.now + (2/24.0)]).reverse
    @past_appointments = Appointment.where(["status = ? AND time < ?", "confirmed", DateTime.now + (2/24.0)]).reverse
    @cancelled_appointments = Appointment.where(["status = ?", "confirmed"]).reverse

  end
end
