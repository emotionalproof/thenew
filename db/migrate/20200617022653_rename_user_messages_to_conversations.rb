class RenameUserMessagesToConversations < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_messages, :conversations
  end
end
