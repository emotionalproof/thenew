class UsersController < ApplicationController
    before_action :find_user, only:[:show, :edit, :update]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        # # return redirect_to controller: 'users', action: 'new' unless @user.save
        # session[:user_id] = @user.id
        # redirect_to user_path(@user.id)

        if user.valid? 
            session[:user_id] = user.id
            redirect_to user_path(user.id)
           else
             flash[:user_errors] = user.errors.full_messages
       
             redirect_to new_user_path 
           end 
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user.id)
    end

    private
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :img_url, :img_token, :user_name)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
