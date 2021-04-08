class RegistrationsController < ApplicationController
    def new
        @user = User.find_by(id: params[:id])
    end

   
end