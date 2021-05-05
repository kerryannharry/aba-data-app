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

def index
    if params[:employee_id] && @employee= Employee.find_by(id: params[:employee_id])
        @appointments = @employee.appointments 
    else 
        @appointments = current_user.appointments
        flash.now[:error]= "Employee not found. Here are your appointments!"
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
    if !current_user.appointments.include?(@appointment)
        redirect_to current_user
    else 
       if @appointment.update(appointment_params)
        redirect_to current_user
       else 
        render :edit
       end
    end
   end

   def destroy
    @appointment = Appointment.find_by(id: params[:id])
    if @appointment.destroy
        redirect_to current_user
    else
        render :edit
   end 
end



   private
   def appointment_params
   params.require(:appointment).permit(:start_time, :duration, :client_id,:employee_id)
   end
end
