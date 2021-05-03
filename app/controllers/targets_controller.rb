class TargetsController < ApplicationController
    def new
        @target = Target.new
        render :new
    end
end