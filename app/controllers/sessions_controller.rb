class SessionsController < ApplicationController
  def create
    if params[:name].nil? || params[:name].length < 1
      redirect_to login_path
      # byebug
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session[:name] = nil
  end
end
