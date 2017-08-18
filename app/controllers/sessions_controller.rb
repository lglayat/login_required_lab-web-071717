class SessionsController < ApplicationController
  helper_method :current_user

  def new

  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to welcome_hello_path
    end
  end

  def show
    session[:name]
  end

  def destroy
    session.clear
    redirect_to '/'
  end


end
