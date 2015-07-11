class UserController < ApplicationController

  def index
    @users = User.all
    @statuses = current_user.statuses.order(created_at: :desc)
  end

  def show
    @user = User.find_by(username: params[:username])
    @statuses = @user.statuses.order(created_at: :desc)
  end

  def friends
    @user = User.find_by(username: params[:username])
    @user_friends = @user.friends
  end

  def add_friend
    @user = User.find_by(username: params[:format])
    current_user.invite @user
    redirect_to user_path(@user.username)
  end

end
