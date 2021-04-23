class ClientsController < ApplicationController
    def show
        redirect_if_not_owner
    end
    
    
    private
    def redirect_if_not_owner
        if current_user !=  Client.find_by(id: params[:id])
            redirect_to current_user
        end 
        
    end
end