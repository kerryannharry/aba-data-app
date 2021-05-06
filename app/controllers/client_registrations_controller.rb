class ClientRegistrationsController < ApplicationController
    def new
        @client = Client.new
    end

    def create
        @client = Client.create(sign_up_params)
        if @client.id
            session[:user_id] = @client.id
            session[:type] = "Client"
            redirect_to client_path(@client)
        else 
            
            render :new
        end

    end

    private
        def sign_up_params
            params.require(:client).permit(:name, :age, :parent_name, :parent_address, :parent_phone_number, :insurance, :parent_email, :client_picture, :client_dob, :password, :password_confirmation)
        end
end

