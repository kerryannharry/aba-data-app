class AppointmentsController < ApplicationController
   def new
    @appointment = Appointment.new
        render :new
   end

   def create
    @appointment = Appointment.new(appointment_params)
    @appointment.employee = current_user 
    if @appointment.save
        redirect_to current_user
    else 
        render :new
   end
   def edit
   end

   def destory
    @appointment = Appointment.where(id: params[:id]).first
    if @appointment.destory
        head(:completed)
    else
        head(:error)
   end 
end



   private
   def appointment_params
   params.require(:appointment).permit(:start_time, :duration, :client_id,:employee_id)
   end
end