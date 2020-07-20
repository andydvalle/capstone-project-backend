class Api::V1::AppointmentsController < ApplicationController
    def index
        appointments = Appointment.all
        render json: appointments.to_json(include: [:patient, :clinic])
    end

    def new
        appointment = Appointment.new
    end

    def create
        appointment = Appointment.create(appointment_params)
        render json: appointment.to_json(include: [:patients, :clinics])
    end

    private
    
    def appointment_params
        params.require(:appointment).permit(:title, :date, :time, :notes, :patient_id, :clinic_id)
    end

end
