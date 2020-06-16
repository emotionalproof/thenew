class ApplicationController < ActionController::Base
   before_action :get_user

 
   def get_user
     # @current_user = User.find(session[:user_id])
     @current_user = User.find_by(id: session[:user_id])
   end 
 

   # def current_user
   #    @user = (User.find_by(id: session[:user_id]) || User.new)
   # end

   def logged_in?
      @current_user != nil
   end

   def require_logged_in
      return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
   end
end
