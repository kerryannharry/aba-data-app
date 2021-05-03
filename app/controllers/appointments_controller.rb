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
    @appointment = Appointment.find_by(id: params[:id])
    if current_user.appointments.find_by(id: params[:id])
        render :edit
    else
        redirect_to current_user
    end
   end

   def destory
    @appointment = Appointment.where(id: params[:id]).first
    if @appointment.destory
        head(:completed)
    else
        redirect_to current_user
   end 
end



   private
   def appointment_params
   params.require(:appointment).permit(:start_time, :duration, :client_id,:employee_id)
   end
end