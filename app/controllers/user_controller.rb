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


  def find_friends
    @users = User.paginate(:page => params[:page], :per_page => 4)
  end

  def votes
    @status = Status.find_by(id: params[:status])
    @voter = User.find_by(username: params[:voter])
    if params[:votes].to_i > 0
      @status.liked_by @voter
      upvotes = @status.get_upvotes.size.to_i
      downvotes = @status.get_downvotes.size.to_i
      total = upvotes - downvotes
      render(json: {total_votes: total}, status: 200)
    else
      @status.downvote_from @voter
      upvotes = @status.get_upvotes.size
      downvotes = @status.get_downvotes.size
      total = upvotes - downvotes
      render(json: {total_votes: total}, status: 200)
    end
  end
end
