class SessionsController < ApplicationController

   def logout
      # session[:id] = nil 
      session.delete(:user_id)
      redirect_to new_login_path
   end 

   def create
      user = User.find_by(user_name: params[:session][:user_name])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id

      redirect_to user_path(user)#controller: 'welcome', action: 'home'
    else
      flash[:error] = "Username or Password is Incorrect"
      redirect_to new_login_path 

   #    @user = User.find_by(id: params[:id])
   #    return head(:forbidden) unless @user.authenticate(params[:password])
   #    session[:user_id] = @user.id

   #    redirect_to controller: 'welcome', action: 'home'
    end
   end

   def new
   end

   # def destroy
   #    session.delete :user_id

   #    redirect_to '/'
   # end
end