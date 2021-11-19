class FriendRequestsController < ApplicationController
  def index
    @friend_requests = current_user.requested_friends
  end

  def create
    user = User.find(params[:user_id])
    current_user.friend_request(user)

    redirect_to profiles_path, notice: "Friend request sent to #{user.username}"
  end

  def accept
    user = User.find(params[:friend_request_id])
    current_user.accept_request(user)

    redirect_to friends_path(current_user.username), notice: "You are now friends with #{user.username}!"
  end
end
