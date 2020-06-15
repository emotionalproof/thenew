class Category < ApplicationRecord
    has_many :user_categories
    has_many :users, through: :user_categories
    has_many :action_posts
end
