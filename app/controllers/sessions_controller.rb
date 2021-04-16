class SessionsController < ApplicationController
   def new
    user = User.create(params)
    if user.valid?
        flash[:success] = "Registration sucessfully completed!"
        session[:user_id] = user.id
        # redirect_to home
    else
        flash[:error]=user.errors.full_messages.to_sentence
        render :new
      end
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