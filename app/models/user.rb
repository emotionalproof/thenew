class User < ApplicationRecord
    has_many :action_posts
    has_many :comments
    has_many :user_categories
    has_many :categories, through: :user_categories
    has_many :messages, through: :user_messages

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    has_many :sending_users, foreign_key: :sender_id, class_name: 'UserMessages'
    has_many :receiver, through: :receiving_users
    has_many :sending_users, foreign_key: :receiver_id, class_name: 'UserMessages'
    has_many :sender, through: :sending_users
end
