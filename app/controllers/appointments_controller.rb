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
end

   def edit
    @appointment = Appointment.find_by(id: params[:id])
    if current_user.appointments.include?(@appointment)
        render :edit
    else
        redirect_to current_user
    end
   end

   def update
    @appointment = Appointment.find_by(id: params[:id])
    # if !current_user.appointments.include?(@appointment)
    #     redirect_to current_user
    # else 
       if @appointment.update(appointment_params)
        redirect_to current_user
       else 
        render :edit
       end
    # end
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
