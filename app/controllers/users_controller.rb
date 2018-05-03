class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_show_path
  end

  def show
    @events_created = EventUser.find_by_attendee_id(@current_user.id).event
  end

  def user_params
    params.require(:user).permit(:name)
  end

end
