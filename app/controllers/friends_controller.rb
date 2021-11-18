class FriendsController < ApplicationController
  def show
    user = User.find_by(username: params[:username])
    @friends = user.friends
  end
end
