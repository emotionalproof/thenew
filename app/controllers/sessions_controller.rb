class SessionsController < ApplicationController
   def create
      @user = User.find_by(id: params[:id])
      return head(:forbidden) unless @user.authenticate(params[:password])
      session[:user_id] = @user.id

      redirect_to controller: 'welcome', action: 'home'
   end

   def new
   end

   def destroy
      session.delete :user_id

      redirect_to '/'
   end
end