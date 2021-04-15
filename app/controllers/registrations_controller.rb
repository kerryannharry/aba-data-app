class RegistrationsController < ApplicationController
    def new
        @employee = Employee.new
        render :employee
    end
end