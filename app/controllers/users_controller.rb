class UsersController < ApplicationController
  

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to homepage_path(@user)
    else
      redirect_to '/'
    end
  end

  private
 
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
