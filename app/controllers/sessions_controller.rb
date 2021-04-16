class SessionsController < ApplicationController
   def new
    user = User.create(email: params[:email])
   end

   def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        # redirect_to home, notice: "Logged in successfully!"
    else
        flash[:error] = "Invalid email or password."
        render :new
   end 

   def destroy
    session[:user_id] = nil
    redirect_to login, notice: "Logged out!"
   end 
end