class UserController < ApplicationController

  def index
    @users = User.all
    @statuses = current_user.statuses.order(created_at: :desc)
  end

  def show
    @user = User.find_by(username: params[:username])
  end

  def friends
    @user = User.find_by(username: params[:username])
    @user_friends = @user.friends
  end

end
