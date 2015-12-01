class UsersController < ApplicationController

  def create
    @user = User.new user_params
    @user.save
    respond_to do |format|
      format.js
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
