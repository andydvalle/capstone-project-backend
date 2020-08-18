class Api::V1::PatientsController < ApplicationController
    def index
        #filter here grab only patient from current_user (from headers auth jwt token)
        user = current_user()
        patients = user.patients
        # patients = Patient.all
        render json: patients.to_json(include: [:conditions, :medications, :appointments, :clinics])
    end

    def new
        patient = Patient.new
    end

    def create
        patient = Patient.create(patient_params)
        render json: patient.to_json(include: [:conditions, :medications, :appointments, :clinics])
    end

    def edit
        patient = Patient.find(params[:id])
    end

    def update
        patient = Patient.find(params[:id])
        patient.update(patient_params)
        render json: patient.to_json
    end
    
    def destroy
        patient = Patient.find(params[:id])
        patient.destroy
        render json: patient.to_json
    end

    private
    
    def patient_params
        params.require(:patient).permit(:firstName, :lastName, :dob, :allergies, :user_id)
    end

end
