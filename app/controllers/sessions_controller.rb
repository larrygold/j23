class SessionsController < ApplicationController
  include SessionsHelper
  
  def new

  end

  def create
    user = User.find(params[:session][:id])
    if user
      log_in(user)
      redirect_to user_show_path
    else
      flash[:danger] = "Cet ID n'existe pas !"
      render 'new'
    end

  end

  def destroy
  end


end
