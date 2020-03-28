class ProblemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  before_action :set_problem, only: [:show, :edit, :update, :destroy]

  def index
    category = Category.find(params[:category_id])
    appointment = Appointment.new
    @problems = category.problems
  end

  def show
  end

  def destroy
    @problem.destroy
    redirect_to category_path(@problem.category)
  end

  private

  def set_problem
    @problem = Problem.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def problem_params
    params.require(:problem).permit(:content, :category_id)
  end
end
