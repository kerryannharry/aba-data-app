class AppointmentsController < ApplicationController
   def new
    @appointment = Appointment.new
        render :new
   end
end