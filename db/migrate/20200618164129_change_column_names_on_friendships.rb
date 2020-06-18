class ChangeColumnNamesOnFriendships < ActiveRecord::Migration[6.0]
    def change
        rename_column :friendships, :follower_id, :user_id
        rename_column :friendships, :followee_id, :friend_id
    end
end
