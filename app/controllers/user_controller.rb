class UserController < ApplicationController
  def index
    @users = User.all
    @statuses = current_user.statuses
  end

  def show
    @user = User.find_by(username: params[:username])
  end
end
