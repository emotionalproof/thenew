class Message < ApplicationRecord
    belongs_to :action_post
    has_many :user_messages
    has_many :users, through: :user_messages
end
