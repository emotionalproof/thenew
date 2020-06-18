class FriendshipsController < ApplicationController
    def create
        @friendship = @current_user.friendships.build(:friend_id => params[:friend_id])
        if @friendship.valid? && @friendship.save
          redirect_to user_path(@current_user.id)
        else
          flash[:errors] = @friendship.errors.full_messages #"You are already friends with this person"
          redirect_to users_path
        end
      end
      
      def destroy
        @friendship = @current_user.friendships.find(params[:id])
        @friendship.destroy
        flash[:notice] = "Removed friendship."
        redirect_to user_path(@current_user.id)
      end
end
