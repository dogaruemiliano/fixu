class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  before_action :set_appointment, only: [:show, :edit, :update, :destroy, :preference, :fixer]

  def show
    @year = @appointment.time.year
    @month = @appointment.time.month
    @day = @appointment.time.day
    @hour = @appointment.time.hour
    @min = @appointment.time.min

    if @appointment.status == 'pending'
      @appointment.status = "confirmed"
      @appointment.save
    end

    @marker = {
      lat: @appointment.latitude,
      lng: @appointment.longitude
    }
  end

  def new
    @category = Category.find(params[:category_id])
    @appointment = Appointment.new
    @problems = @category.problems
  end

  def create
    @category = Category.find(params[:category_id])
    @problems = @category.problems
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    if @appointment.save
      redirect_to appointment_preference_path(@appointment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      if @appointment.fixer
        @appointment.amount_cents = @appointment.fixer.price_cents* @appointment.problem.duration
        @appointment.save
        session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],
          line_items: [{
            name: @appointment.fixer.user.full_name,
            amount: @appointment.amount_cents,
            currency: 'eur',
            quantity: 1
          }],
          success_url: appointment_url(@appointment),
          cancel_url: appointment_url(@appointment)
        )

        @appointment.update(checkout_session_id: session.id)
        redirect_to new_appointment_payment_path(@appointment)
      else
        redirect_to appointment_fixer_path(@appointment)
      end
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    if (@appointment.status == "created") || (@appointment.status == "pending")
      redirect_to root_path
    end
  end

  def preference
  end

  def fixer
    problem = @appointment.problem
    @fixers = Fixer.joins(:specialities).where(specialities: {problem: problem})
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:time, :status, :amount_cents, :comment, :address, :problem_id, :cancel_reason, :user_id, :fixer_id, photos: []) # to be completed
  end
end
