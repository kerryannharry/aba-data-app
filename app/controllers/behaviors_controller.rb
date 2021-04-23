class BehaviorsController < ApplicationController
    def new
        @behavior = Behavior.new
        render :new
    end 

    def create
    end
end