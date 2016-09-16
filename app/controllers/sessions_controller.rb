class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      redirect_to root_path, notice: 'Successfully logged in'
    else
      flash[:alert] = 'Email or password is incorrect'
      render :new
    end
  end

  def new
  end

  def destroy
    redirect_to root_url
  end
end
