class UserCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :user_categories do |t|
      t.integer   :user_id
      t.integer   :category_id

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
