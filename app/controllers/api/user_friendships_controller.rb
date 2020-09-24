class UserFriendshipsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    if params[:friend_id] 
      @friend = User.where(name: params[:friend_id]).first
      raise ActiveRecord::RecordNotFound if @friend.nil?
      @user_friendship = current_user.user_friendships.new(friend: @friend)
    else
      flash[:error] = "Friend required"
    end

  rescue ActiveRecord::RecordNotFound
    render file: 'public/404', status: :not_found
  end

  private

  def user_friendships_params
    params.require(:user_friendships).permit(:user, :friend, :user_id, :friend_id, :state)
  end

  def create
    if params[:user_friendship] && params[:user_friendship].has_key?(:friend_id)
      @friend = User.where(name: params[:user_friendship][:friend_id]).first
      @user_friendship = current_user.user_friendships.new(friend: @friend) 
      @user_friendship.save
      redirect_to root_path
      flash[:notice] = "Friend Added"
    else
      flash[:error] = "Friend Required"
      redirect_to root_path
    end
  end

end