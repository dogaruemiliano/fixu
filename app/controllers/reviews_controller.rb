class ReviewsController < ApplicationController

  before_action :set_review, only: :destroy
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @appointment = Appointment.find(params[:appointment_id])
    @review.appointment = @appointment
    if @review.save
      redirect_to fixer_details_path(@appointment.fixer)
    else
      @user = @appointment.user
      @appointments = current_user.appointments
      @upcoming_appointments = @appointments.select{|appointment| appointment.status == "confirmed" && appointment.time >= Date.today}.reverse
      @past_appointments = @appointments.select{|appointment| appointment.status == "confirmed" && appointment.time < Date.today}.reverse
      render 'users/show'
    end
  end

  def destroy
    @review.destroy
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content, :appointment_id)
  end
end
