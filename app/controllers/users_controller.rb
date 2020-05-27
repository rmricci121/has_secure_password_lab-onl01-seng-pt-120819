class UsersController < ApplicationController
  # def new
  #   @user = User.new(params[:id])
  # end

  def create
    User.create(user_params)
  end

  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
