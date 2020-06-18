class Friendship < ApplicationRecord
    belongs_to :user
    belongs_to :friend, :class_name => "User"

    validates :friend_id, uniqueness: { scope: :user_id,
        message: "you are already friends with this person" }

end
