class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :action_post_id
      t.string :content

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
