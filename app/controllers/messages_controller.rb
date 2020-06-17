class MessagesController < ApplicationController
    before_action do
        @conversation = Conversation.find(params[:conversation_id])
    end
    
      def index
        @messages = @conversation.messages

        if @messages.length > 10
          @over_ten = true
          @messages = @messages[-10..-1]
        end
        if params[:m]
          @over_ten = false
          @messages = @conversation.messages
        end
        if @messages.last
          if @messages.last.user_id != @current_user.id
            @messages.last.read = true;
          end
        end
    
        @message = @conversation.messages.new

        # @messages.where("user_id != ? AND read = ?", @current_user.id, false).update_all(read: true)
        # @message = @user_message.messages.new
      end
    
      def new
        @message = @conversation.messages.new
      end
    
      def create
        @message = @conversation.messages.new(message_params)
        if @message.save
          redirect_to conversation_messages_path(@conversation)
        end

        # @message.user = current_user

        # if @message.save
        #   redirect_to user_messages_path(@user_messages)
        # end
      end
    
    private
      def message_params
        params.require(:message).permit(:content, :user_id, :action_post_id)
      end
end
