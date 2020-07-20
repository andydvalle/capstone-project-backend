class Api::V1::PatientsController < ApplicationController
    def index
        patients = Patient.all
        #filter here grab only patient from current_user (from headers auth jwt token)
        render json: patients.to_json(include: [:conditions, :medications, :appointments, :clinics])
    end

    def new
        patient = Patient.new
    end

    def create
        patient = Patient.create(patient_params)
        render json: patient.to_json(include: [:conditions, :medications, :appointments, :clinics])
    end

    private
    
    def patient_params
        params.require(:patient).permit(:firstName, :lastName, :dob, :allergies, :user_id)
    end

end
