class CreateUserMessage < ActiveRecord::Migration[6.0]
  def change
    create_table :user_messages do |t|
      t.integer :message_id
      t.integer :sender_id
      t.integer :receiver_id
    end
  end
end
