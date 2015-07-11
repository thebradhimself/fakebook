class UserController < ApplicationController

  def index
    @users = User.all
    @statuses = Status.all.order(created_at: :desc)
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

  def friend_requests
    @user = User.find_by(username: params[:username])
    @requests = @user.pending_invited_by
  end

  def accept_request
    @user = User.find_by(username: params[:username])
    @friend = User.find_by(username: params[:friend_name])
    @user.approve @friend
    redirect_to index_path
  end

  def deny_request
    @user = User.find_by(username: params[:username])
    @friend = User.find_by(username: params[:friend_name])
    @user.block @friend
    redirect_to index_path
  end

end
