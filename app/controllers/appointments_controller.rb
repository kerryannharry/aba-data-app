class AppointmentsController < ApplicationController
   def new
    @appointment = Appointment.new
        render :appointment
   end
end