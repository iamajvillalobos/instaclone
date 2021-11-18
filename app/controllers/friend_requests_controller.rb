class FriendRequestsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    current_user.friend_request(user)

    redirect_to profiles_path, notice: "Friend request sent to #{user.username}"
  end
end
