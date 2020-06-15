class UsersController < ApplicationController
    before_action :find_user, only:[:show, :edit, :update]
    def show
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        redirect_to user_path(user.id)
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user.id)
    end

    private
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :encrypted_password, :img_url, :img_token, :user_name)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
