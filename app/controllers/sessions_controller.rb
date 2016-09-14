class SessionsController < ApplicationController
  def create
  end

  def new
  end

  def destroy
    redirect_to root_url
  end
end
