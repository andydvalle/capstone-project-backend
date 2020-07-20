class Api::V1::PatientsController < ApplicationController
    def index
        patients = Patient.all
        render json: patients.to_json(include: [:conditions, :medications])
    end

    def new
        patient = Patient.new
    end

    def create
        patient = Patient.create(patient_params)
        render json: patient.to_json(include: [:conditions, :medications])
    end

    private
    
    def patient_params
        params.require(:patient).permit(:firstName, :lastName, :dob, :allergies, :user_id)
    end

end
