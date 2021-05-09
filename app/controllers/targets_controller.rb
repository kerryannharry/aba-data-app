class TargetsController < ApplicationController
    def new
        @target = Target.new
        render :new
    end

    def create
        @target = Target.create(target_params)
        @target.emloyee = current_user
        if @target.save
            redirect_to current_user
        else
            render :new
        end
    end



    private
    def target_params
        params.require(:target).permit(:title, :trial, :client_id)
    end
end