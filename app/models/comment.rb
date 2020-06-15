class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :action_post
end
