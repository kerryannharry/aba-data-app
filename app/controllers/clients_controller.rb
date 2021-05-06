class ClientsController < ApplicationController
    def show
        redirect_if_not_owner
    end
    
    
    private
    def redirect_if_not_owner
        redirect_to current_user unless current_user  == Client.find_by(id: params[:id]) || session[:type] == "Employee"
    end
end