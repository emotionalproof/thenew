class DeleteColumnMessageIdInUserMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_messages, :message_id, :integer
  end
end
