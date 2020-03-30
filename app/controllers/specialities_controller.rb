class SpecialitiesController < ApplicationController
  before_action :set_speciality, only: [:destroy]
  def create
    @speciality = Speciality.new(speciality_params)
    @fixer = Fixer.find(params[:fixer_id])
    @speciality.fixer = @fixer
    if @speciality.save!
      redirect_to fixer_details_path(current_user.fixer)
    else
      render :new
    end
    # if @speciality.save
    #   respond_to do |format|
    #     format.html { redirect_to fixer_details_path(@fixer) }
    #     format.js  # <-- will render `app/views/reviews/create.js.erb`
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render 'fixers/details' }
    #     format.js  # <-- idem
    #   end
    # end
  end

  def destroy
    @speciality.destroy
  end

private

  def set_speciality
    @speciality = Speciality.find(params[:id])
  end

  def speciality_params
    params.require(:speciality).permit(:fixer_id, :problem_id)
  end
end
