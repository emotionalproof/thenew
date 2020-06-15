class AddUserIdToActionPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :action_posts, :user_id, :integer
  end
end
