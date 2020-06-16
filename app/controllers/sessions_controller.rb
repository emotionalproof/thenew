class SessionsController < ApplicationController
   def create
      @user = User.find_by(user_name: params[:user_name])
      return head(:forbidden) unless @user.authenticate(params[:encrypted_password])
      session[:user_id] = @user.id
   end
end