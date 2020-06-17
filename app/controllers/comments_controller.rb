class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.action_post_id = params[:action_post_id]
        @comment.user_id = @current_user.id
    
      
        @comment.save
      
        redirect_to action_post_path(@comment.action_post)
      end
      
      def comment_params
        params.require(:comment).permit(:content)
      end
end
