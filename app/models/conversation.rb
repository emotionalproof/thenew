class Conversation < ApplicationRecord
    belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
    belongs_to :receiver, :foreign_key => :receiver_id, class_name: 'User'
    has_many :messages, dependent: :destroy
    
    validates_uniqueness_of :sender_id, :scope => :receiver_id
    scope :between, -> (sender_id,receiver_id) do
        where("(conversations.sender_id = ? AND conversations.receiver_id =?) OR (conversations.sender_id = ? AND conversations.receiver_id =?)", sender_id,receiver_id, receiver_id, sender_id)
    end

    # belongs_to :sender, class_name: "User", foreign_key: "sender_id"
    # belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
    # has_many :messages, dependent: :destroy
  
    # validates_uniqueness_of :sender_id, scope: :receiver_id
  
    # scope :between, -> (sender_id, receiver_id) do
    #   where("(user_messages.sender_id = ? AND user_messages.receiver_id = ?) OR (user_messages.receiver_id = ? AND user_messages.sender_id = ?)", sender_id, receiver_id, sender_id, receiver_id)
    # end
  
    # def recipient(current_user)
    #   self.sender_id == current_user.id ? self.receiver : self.sender
    # end
end
