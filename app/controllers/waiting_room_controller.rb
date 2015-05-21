class WaitingRoomController < ApplicationController

  def index

  	@doctors = Doctor.all.order(:name) 
  	@patients = Patient.all.order(:name)
  	@appointments = Appointment.order(:appt_time)
  
  end

  def create_appointment

  	appointment = Appointment.new
  	appointment.doctor_id = params[:doctor_id]
  	appointment.patient_id = params[:patient_id]
  	appointment.appt_time = params[:appt_time]
  	appointment.save

  	redirect_to root_path

  end


end
