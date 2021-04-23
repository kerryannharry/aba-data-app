class ApplicationController < ActionController::Base
    add_flash_types :success, :errors, :warnings

    helper_method :current_user

    private
    def current_user
        if session[:type] == "Client" 
            @current_user ||=  Client.find_by(id: session[:user_id])
        elsif session[:type] == "Employee" 
            @current_user ||= Employee.find_by(id: session[:user_id])
    
        end 
    end
end
