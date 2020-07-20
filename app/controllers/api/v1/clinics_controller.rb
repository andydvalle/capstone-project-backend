class Api::V1::ClinicsController < ApplicationController
    def index
        clinics = Clinic.all
        render json: clinics.to_json(include: [:appointments, :patient])
    end

    def new
        clinic = Clinic.new
    end

    def create
        clinic = Clinic.create(clinic_params)
        render json: clinic.to_json(include: [:appointments, :patient])
    end

    private
    
    def clinic_params
        params.require(:clinic).permit(:name, :practitioner, :location, :number, :notes, :patient_id)
    end

end
