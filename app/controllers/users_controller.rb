class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @fixer = Fixer.find_by(user_id: @user.id)
  end
end
