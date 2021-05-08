class SessionsController < ApplicationController
   def new
   end

def create
    user = Client.find_by(parent_email: params[:email]) ||  Employee.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        session[:type] = user.class.to_s
        redirect_to user, notice: "Logged in successfully!"
    else
        flash[:error] = "Invalid email or password."
        render :new
   end
end 

   def destroy
    session[:user_id] = nil
    session[:type] = nil
    redirect_to login_path, notice: "Logged out!"
   end 

   def omniauth
    user = Employee.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
        session[:user_id] =user.id
        redirect_to user
    else
        redirect_to login_path
    end
   end
end