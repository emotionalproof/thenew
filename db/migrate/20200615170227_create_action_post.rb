class CreateActionPost < ActiveRecord::Migration[6.0]
  def change
    create_table :action_posts do |t|
      t.string :title
      t.string :content
      t.string :location
      t.integer :category_id
      t.string :img_url
      
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
