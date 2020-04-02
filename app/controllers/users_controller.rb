class UsersController < ApplicationController
  def index
    redirect_to root_path
  end
  def show
    @user = User.find(params[:id])

    @review = Review.new

    @upcoming_appointments = Appointment.where(["status = ? AND time >= ? AND user_id = ?", "confirmed", DateTime.now + (2/24.0), current_user.id]).reverse
    @past_appointments = Appointment.where(["status = ? AND time < ? AND user_id = ?", "confirmed", DateTime.now + (2/24.0), current_user.id]).reverse
    @cancelled_appointments = Appointment.where(["status = ? AND user_id = ? ", "cancelled", current_user.id]).reverse
  end
end
