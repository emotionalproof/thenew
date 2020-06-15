class ActionPost < ApplicationRecor
    belongs_to :user
    belongs_to :category
    has_many :comments
    has_many :messages
end
