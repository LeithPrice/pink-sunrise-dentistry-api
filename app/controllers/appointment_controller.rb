class AppointmentController < ApplicationController
    
  # these are methods that are run subject to specific fetch statements
    before_action :set_appointment, only: %i[show]
    before_action :set_doctor, only: %i[index]
  
  # this method is for rendering all appointments to do with a specific doctor_id
    def index
      render json: @doctor_appointments
    end

  # this method is for rendering a specific appointment set by the param id
    def show
      render json: @appointment
    end


  # private is an access modifier, used so the below methods can only be called within this class.
    private
  
  # this method is called before hand to set the variable @appointment
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end
  
    # this method is called before hand to set the variable @doctor_appointment
    def set_doctor
      @doctor_appointments = Appointment.where(doctor_id: params[:doctor_id])
    end
end
  

