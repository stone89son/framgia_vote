class SessionsController < Devise::SessionsController
  def create
    @user = User.find_for_database_authentication(email: params[:user][:email])
    return invalid_login_attempt unless @user

    if @user.valid_password?(params[:user][:password])
      sign_in :user, @user
      return
    end
    invalid_login_attempt
  end

  private
  def invalid_login_attempt
    flash.now[:notice] =  "Invalid email or password."
    @user = User.new
    respond_to do |format|
      format.js
    end
  end
end
