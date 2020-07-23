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
        render json: appointment.to_json(include: [:patient, :clinic])
    end

        def edit
        appointment = Appointment.find(params[:id])
    end

    def update
        appointment = Appointment.find(params[:id])
        appointment.update(appointment_params)
        render json: appointment.to_json
    end
    
    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy
        render json: appointment.to_json
    end

    private
    
    def appointment_params
        params.require(:appointment).permit(:title, :date, :time, :notes, :patient_id, :clinic_id)
    end

end
