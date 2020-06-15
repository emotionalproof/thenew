class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string   "email",                  default: "", null: false
      t.string   "encrypted_password",     default: "", null: false
      t.string :img_url
      t.string :img_token
      t.string :user_name


      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
