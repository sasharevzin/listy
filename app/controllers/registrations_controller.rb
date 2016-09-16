class RegistrationsController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully signed up!'
    else
      flash[:alert] = @user.errors.full_messages
      render :new
    end
  end

  private

  def user_params
    params.permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end
end
