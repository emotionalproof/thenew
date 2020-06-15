class ActionPostsController < ApplicationController
    before_action :find_action_post, only:[:show, :edit, :update, :destroy]
    def index
        @action_posts = ActionPost.all
    end

    def show
    end

    def new
        @action_post = ActionPost.new
    end

    def create
        action_post = ActionPost.create(action_post_params)
        redirect_to action_post_path(action_post.id)
    end

    def edit
    end

    def update
        @action_post.update(action_post_params)
        redirect_to action_post_path(@action_post.id)
    end

    def destroy
        @action_post.destroy
        redirect_to action_posts_path
    end

    private

    def action_post_params
        params.require(:action_post).permit(:title, :content, :location, :category_id, :img_url)
    end

    def find_action_post
        @action_post = ActionPost.find(params[:id])
    end
end
