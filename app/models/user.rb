class User < ApplicationRecord
    has_secure_password
    has_many :conversations, :foreign_key => :sender_id

    has_many :action_posts
    has_many :comments
    has_many :user_categories
    has_many :categories, through: :user_categories

    has_many :friendships
    has_many :friends, :through => :friendships
    has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
    has_many :inverse_friends, :through => :inverse_friendships, :source => :user
    

    # has_many :messages, through: :user_messages

    # has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    # has_many :followees, through: :followed_users
    # has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    # has_many :followers, through: :following_users

    # has_many :sending_users, foreign_key: :sender_id, class_name: 'UserMessages'
    # has_many :receiver, through: :receiving_users
    # has_many :sending_users, foreign_key: :receiver_id, class_name: 'UserMessages'
    # has_many :sender, through: :sending_users

    def name
        "#{self.first_name} #{self.last_name}"
    end

    def self.all_except(user)
        where.not(id: user)
      end
end
