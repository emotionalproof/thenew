class ChangeFollowsTableNameToFriendships < ActiveRecord::Migration[6.0]
  def change
      rename_table :follows, :friendships
  end
end
