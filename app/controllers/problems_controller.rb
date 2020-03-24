class ProblemsController < ApplicationController
  before_action :set_problem, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:new, :create]

  def index
    @problems = Problem.all
  end

  def show
  end

  def edit
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)
    @problem.category = @category
    if @problem.save
      redirect_to category_path(@problem.category)
    else
      render :new
    end
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def update
    @problem.update(problem_params)
    redirect_to category_path(@problem.category)

    # Will raise ActiveModel::ForbiddenAttributesError
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
