class SessionController < ApplicationController
  def new

  end

  def create
   user = User.find_by :email => params[:email]
     if user.present? && user.authenticate(params[:password])
       session[:user_id] = user.id
       #log em in
       redirect_to jobs_path
     else
       flash[:error] = "Login credentials invalid"
       redirect_to login_path
   end
  end

  def destroy
   session[:user_id] = nil
   redirect_to root_path
  end

end
