class ReviewsController < ApplicationController

  before_action :set_review, only: :destroy

  def create
    @review = Review.new(review_params)
    @appointment = Appointment.find(params[:appointment_id])
    @review.appointment = @appointment
    if @review.save
      redirect_to fixer_details_path(@appointment.fixer)
    else
      render :new
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
