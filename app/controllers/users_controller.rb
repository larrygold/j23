class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_show_path
  end

  def show

  end

  def user_params
    params.require(:user).permit(:name)
  end

end
