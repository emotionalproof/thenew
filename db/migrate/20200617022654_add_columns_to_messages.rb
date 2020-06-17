class AddColumnsToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :conversation, index: true
    add_reference :messages, :user, index: true

    add_column :messages, :read, :boolean, :default => false
    add_column :messages, :created_at, :datetime, null: false
  end
end
