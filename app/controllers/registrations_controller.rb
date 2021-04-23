class RegistrationsController < ApplicationController
    def new
        @employee = Employee.new
        render :employee
    end

    def create
        @employee = Employee.create(sign_up_params)
        if @employee.id
            session[:user_id] = @employee.id
            redirect_to show
        else 
            
            render :employee
        end

    end


    private
    def sign_up_params
        params.require(:employee).permit(:name, :email, :bacbid, :role, :password)
    end
    end