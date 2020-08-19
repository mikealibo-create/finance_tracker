class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    current_user.friends << friend
    if current_user.save
      flash[:notice] = "Successfully Follow a New Friend"
    else
      flash[:alert] = "Something went wrong with tracking request"
    end
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "Unfollowed Friend Successfully"
    redirect_to my_friends_path
  end
end
